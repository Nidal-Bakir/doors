import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/presentation/managers/chat_bloc/chat_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

class ChatMessagesListWidget extends StatefulWidget {
  final ScrollController chatScrollController;
  const ChatMessagesListWidget({Key? key, required this.chatScrollController})
      : super(key: key);

  @override
  State<ChatMessagesListWidget> createState() => _ChatMessagesListWidgetState();
}

class _ChatMessagesListWidgetState extends State<ChatMessagesListWidget> {
  late final _chatScrollController = widget.chatScrollController;

  final _newChatMessagesAnimatedListKey = GlobalKey<SliverAnimatedListState>();
  final List<LocalChatMessage> _newChatMessages = [];

  bool _canLoadMoreMessages = false;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (_canLoadMoreMessages &&
            (notification.metrics.pixels >=
                notification.metrics.maxScrollExtent - 200)) {
          context.read<ChatBloc>().add(const ChatMessagesLoaded());
        }
        return true;
      },
      child: CustomScrollView(
        reverse: true,
        controller: _chatScrollController,
        slivers: [
          const SliverToBoxAdapter(),
          BlocListener<ChatBloc, ChatState>(
            listenWhen: (previous, current) =>
                current is ChatNewMessageAddedSuccessfully,
            listener: (context, state) async {
              if (state is ChatNewMessageAddedSuccessfully) {
                await _addMessageToNewChatMessagesAnimatedList(
                  state.newMessage,
                );
              }
            },
            child: SliverAnimatedList(
              key: _newChatMessagesAnimatedListKey,
              initialItemCount: _newChatMessages.length,
              itemBuilder: (context, index, animation) {
                final _slideTransitionAnimation = Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(
                  key: Key(
                    _newChatMessages[index].localMessageId.toString(),
                  ),
                  position: _slideTransitionAnimation,
                  child: FadeTransition(
                    opacity: animation,
                    child: MessageBuilderWidget.buildMessage(
                      _newChatMessages[index],
                    ),
                  ),
                );
              },
            ),
          ),
          BlocBuilder<ChatBloc, ChatState>(
            buildWhen: (prev, current) {
              return current is ChatInProgress ||
                  current is ChatMessagesLoadSuccess;
            },
            builder: (context, state) {
              return state.maybeWhen(
                inProgress: () => const SliverFillRemaining(
                  hasScrollBody: false,
                  fillOverscroll: true,
                  child: Center(
                    child: LoadingIndicator(),
                  ),
                ),
                messagesLoadSuccess: (messages, canLoadMore) {
                  _canLoadMoreMessages = canLoadMore;

                  return _SliverListChatMessagesWithDateTimeHeaders(
                    key: Key(
                      messages.length.toString(),
                    ),
                    chatMessages: messages,
                  );
                },
                orElse: () => const SliverToBoxAdapter(),
              );
            },
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<ChatBloc, ChatState>(
              builder: (context, state) {
                if (state is ChatMoreMessagesInProgress) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Center(
                      child: LoadingIndicator(),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _addMessageToNewChatMessagesAnimatedList(
      LocalChatMessage newMessage) async {
    _newChatMessages.insert(0, newMessage);
    _newChatMessagesAnimatedListKey.currentState?.insertItem(
      0,
      duration: const Duration(milliseconds: 150),
    );

    await _animateChatListToLatestMessage(newMessage);
  }

  Future<void> _animateChatListToLatestMessage(
    LocalChatMessage newMessage,
  ) async {
    await Future.delayed(const Duration(milliseconds: 50));

    if (newMessage.messageType != MessageType.text.name &&
        newMessage.isSendedByCurrentUser) {
      await _scrollToEnd();

      return;
    }

    var offsetThreshold = 200.0;
    if (newMessage.messageType == MessageType.image.name) {
      final imageMetaData =
          (newMessage.messageMetaData as ImageMessageMetaData);
      final imageAspicRatio =
          imageMetaData.imageWidth / imageMetaData.imageHight;

      offsetThreshold += (offsetThreshold * imageAspicRatio);
    }

    if (_chatScrollController.position.pixels <= offsetThreshold) {
      await _chatScrollController.animateTo(
        _chatScrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  Future<void> _scrollToEnd() async {
    await _chatScrollController.animateTo(
      _chatScrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}

class _SliverListChatMessagesWithDateTimeHeaders extends StatefulWidget {
  final List<LocalChatMessage> chatMessages;
  const _SliverListChatMessagesWithDateTimeHeaders({
    Key? key,
    required this.chatMessages,
  }) : super(key: key);

  @override
  State<_SliverListChatMessagesWithDateTimeHeaders> createState() =>
      _SliverListChatMessagesWithDateTimeHeadersState();
}

class _SliverListChatMessagesWithDateTimeHeadersState
    extends State<_SliverListChatMessagesWithDateTimeHeaders> {
  final List<Object> _chatMessagesWithDateTimeHeaders = [];

  @override
  void initState() {
    super.initState();

    _generateChatListModel();
  }

  void _generateChatListModel() {
    final grouped = widget.chatMessages.groupListsBy(
      (message) => DateTime(
        message.sentDate.year,
        message.sentDate.month,
        message.sentDate.day,
      ),
    );
    for (var group in grouped.keys) {
      _chatMessagesWithDateTimeHeaders.insert(0, group);
      _chatMessagesWithDateTimeHeaders.insertAll(
        0,
        grouped[group]!.sorted(
          (a, b) => b.sentDate.compareTo(a.sentDate),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final item = _chatMessagesWithDateTimeHeaders[index];
          if (item is DateTime) {
            return _DateTimeHeader(
              dateTime: item,
            );
          }
          if (item is LocalChatMessage) {
            return MessageBuilderWidget.buildMessage(item);
          }
          return const SizedBox.shrink();
        },
        childCount: _chatMessagesWithDateTimeHeaders.length,
      ),
    );
  }
}

class _DateTimeHeader extends StatelessWidget {
  final DateTime dateTime;
  const _DateTimeHeader({Key? key, required this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.card,
        borderRadius: BorderRadius.circular(8),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            _getFormattedSendDateTimeForChatHeader(
              dateTime,
              context,
            ),
          ),
        ),
      ),
    );
  }

  /// Will returns Formatted dateTime after converting the [dateTime] param to
  /// localized time zone for this device.
  String _getFormattedSendDateTimeForChatHeader(
      DateTime dateTime, BuildContext context) {
    final languageTag = Localizations.maybeLocaleOf(context)?.toLanguageTag();
    final localizedDateTime = dateTime.toLocal();

    return DateFormat('EEE MMM d, yyyy', languageTag).format(localizedDateTime);
  }
}
