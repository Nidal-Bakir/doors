import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/presentation/managers/chat_bloc/chat_bloc.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_composer_bar.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/scroll_to_latest_message_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUser;
  const ChatScreen({Key? key, required this.chatUser}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _chatAnimatedListKey = GlobalKey<SliverAnimatedListState>();
  late final _chatScrollController = ScrollController();

  bool _showChat = false;
  bool _canLoadMoreMessages = false;
  List<LocalChatMessage> _chatMessages = [];

  @override
  void dispose() {
    _chatScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _softKeyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    if (_softKeyboardHeight > 0.0) {
      _scrollChatListToOffsetSoftKeyboard(_softKeyboardHeight);
    }

    final _theme = Theme.of(context);
    return BlocProvider<ChatBloc>(
      create: (context) => GetIt.I.get<ChatBloc>(
        param1: context.read<MessagingBloc>(),
        param2: widget.chatUser.userId,
      )..add(
          const ChatMessagesLoaded(),
        ),
      child: Builder(builder: (context) {
        return Scaffold(
          floatingActionButton: ScrollToLatestMessageFAB(
            chatScrollController: _chatScrollController,
          ),
          appBar: AppBar(
            centerTitle: false,
            leadingWidth: 32,
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Hero(
                  tag: widget.chatUser.userId,
                  child: CircularProfileImage(
                    url: widget.chatUser.profileImage?.mediaUrl,
                    fileImage: widget.chatUser.profileImage?.file,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  widget.chatUser.name,
                  style: _theme.textTheme.subtitle2,
                ),
              ],
            ),
            actions: [
              PopupMenuButton<int>(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      value: 0,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.person_off_outlined,
                            size: 25,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            context.loc.block,
                            style: _theme.textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ];
                },
              ),
            ],
          ),
          body: Column(
            children: [
              const ConnectionStatusWidget(),
              Expanded(
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) {
                    if (_canLoadMoreMessages &&
                        _showChat &&
                        (notification.metrics.pixels <=
                            notification.metrics.minScrollExtent + 200)) {
                      context.read<ChatBloc>().add(const ChatMessagesLoaded());
                    }
                    return true;
                  },
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: _showChat ? 1.0 : 0.0,
                        child: CustomScrollView(
                          controller: _chatScrollController,
                          slivers: [
                            SliverToBoxAdapter(
                              child: BlocBuilder<ChatBloc, ChatState>(
                                builder: (context, state) {
                                  if (state is ChatMoreMessagesInProgress) {
                                    return const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.0),
                                      child: Center(
                                        child: LoadingIndicator(),
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                              ),
                            ),
                            BlocConsumer<ChatBloc, ChatState>(
                              listenWhen: (previous, current) =>
                                  current is ChatNewMessageAddedSuccessfully ||
                                  current is ChatMessagesLoadSuccess,
                              listener: (context, state) async {
                                if (state is ChatNewMessageAddedSuccessfully) {
                                  await _addNewMessageToListView(
                                    state.newMessage,
                                  );
                                }

                                if (state is ChatMessagesLoadSuccess &&
                                    _chatMessages.isEmpty) {
                                  _scrollToEnd();
                                }
                              },
                              buildWhen: (prev, current) =>
                                  current is ChatInProgress ||
                                  current is ChatMessagesLoadSuccess,
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
                                    _chatMessages = messages.toList();

                                    return SliverAnimatedList(
                                      key: _chatAnimatedListKey,
                                      initialItemCount: _chatMessages.length,
                                      itemBuilder: (context, index, animation) {
                                        final _slideTransitionAnimation =
                                            Tween<Offset>(
                                          begin: const Offset(0, 1),
                                          end: Offset.zero,
                                        ).animate(animation);

                                        return SlideTransition(
                                          key: Key(
                                            _chatMessages[index]
                                                .localMessageId
                                                .toString(),
                                          ),
                                          position: _slideTransitionAnimation,
                                          child: FadeTransition(
                                            opacity: animation,
                                            child: MessageBuilderWidget
                                                .buildMessage(
                                              _chatMessages[index],
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  orElse: () => const SliverToBoxAdapter(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      if (!_showChat)
                        const Center(
                          child: LoadingIndicator(),
                        )
                    ],
                  ),
                ),
              ),
              MessageComposerBar(chatUser: widget.chatUser),
            ],
          ),
        );
      }),
    );
  }

  void _scrollChatListToOffsetSoftKeyboard(double softKeyboardHeight) {
    if (_chatScrollController.hasClients) {
      _chatScrollController.animateTo(
        _chatScrollController.position.pixels + softKeyboardHeight,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInCubic,
      );
    }
  }

  Future<void> _addNewMessageToListView(LocalChatMessage newMessage) async {
    _chatMessages.add(newMessage);
    _chatAnimatedListKey.currentState?.insertItem(
      _chatMessages.length - 1,
      duration: const Duration(milliseconds: 200),
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

    if (_chatScrollController.position.pixels >=
        _chatScrollController.position.maxScrollExtent - offsetThreshold) {
      await _chatScrollController.animateTo(
        _chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
      );
    }
  }

  Future<void> _scrollToEnd() async {
    await Future.delayed(const Duration(milliseconds: 50));

    if (_chatScrollController.position.pixels <
        _chatScrollController.position.maxScrollExtent) {
      await _chatScrollController.animateTo(
          _chatScrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 50),
          curve: Curves.linear);
      await _scrollToEnd();
    } else {
      setState(() {
        _showChat = true;
      });
    }
  }
}
