import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/send_text_message_bloc/send_text_message_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/scroll_to_latest_message_fab.dart';
import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUserInfo;
  const ChatScreen({Key? key, required this.chatUserInfo}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _chatAnimatedListKey = GlobalKey<AnimatedListState>();
  final _chatScrollController = ScrollController();
  
  @override
  void dispose() {
    _chatScrollController.dispose();
    super.dispose();
  }

  final list = [
    LocalChatMessage.receivedMessage(
      isRead: true,
      mediaFile: null,
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.text.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage:
          'fdsfsa dsfds fdOfficia velit sit eu exercitation do ullamco sunt sunt quis enim duis ea irure non. Exercitation ipsum non in incididunt ea adipisicing ad ipsum officia eiusmod fugiat nisi. Sit labore laboris deserunt veniam ex dolor excepteur est aliquip aute do duis aute. Qui duis ullamco dolor excepteur. Aliqua laboris incididunt veniam commodo fugiat incididunt labore ut quis minim. Nostrud cupidatat commodo culpa quis et. Ullamco minim ad incididunt dolor consectetur ipsum nulla ullamco sint aliquip aliqua do.fas',
    ),
    LocalChatMessage.receivedMessage(
      isRead: true,
      mediaFile: null,
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.text.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage: ' dfsaf fasf sa',
    ),
    LocalChatMessage.receivedMessage(
      isRead: true,
      mediaFile: null,
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.text.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage: 'hi',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollToLatestMessageFAB(
        chatScrollController: _chatScrollController,
      ),
      appBar: AppBar(
        title: ElevatedButton(
          child: Text(''),
          onPressed: () async {
            list.add(LocalChatMessage.receivedMessage(
              isRead: true,
              mediaFile: null,
              messageServerCreationDate: DateTime.now(),
              messageType: MessageType.text.name,
              remoteMessageId: '123',
              senderId: '1230',
              sentDate: DateTime.now(),
              textMessage: 'hi',
            ));
            _chatAnimatedListKey.currentState?.insertItem(
              list.length - 1,
              duration: const Duration(milliseconds: 200),
            );
            await _animateChatListToLatestMessage();
          },
        ),
      ),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: AnimatedList(
              controller: _chatScrollController,
              key: _chatAnimatedListKey,
              initialItemCount: list.length,
              itemBuilder: (context, index, animation) {
                final _slideTransitionAnimation = Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(
                  position: _slideTransitionAnimation,
                  child: FadeTransition(
                      opacity: animation,
                      key: Key(list[index].localMessageId.toString()),
                      child: _ReceivedTextMessageWidget(
                        message: list[index],
                      )),
                );
              },
            ),
          ),
          Container(height: 50, color: Colors.red)
        ],
      ),
    );
  }

  Future<void> _animateChatListToLatestMessage() async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (_chatScrollController.position.pixels >=
        _chatScrollController.position.maxScrollExtent - 200) {
      _chatScrollController.animateTo(
        _chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
      );
    }
  }
}

class _ReceivedTextMessageWidget extends StatelessWidget {
  final LocalChatMessage message;
  const _ReceivedTextMessageWidget({Key? key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          color: _theme.colorScheme.primary,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  start: 10,
                  end: 10,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message.textMessage!,
                  style: _theme.textTheme.subtitle2,
                ),
              ),
              Positioned(
                bottom: 3,
                right: 10,
                child: Text(
                  getMessageSendTime(message.sentDate),
                  style: _theme.textTheme.bodyText1,
                ),
              ),

              // to make the min width size of the message as small as time widget
              Opacity(
                opacity: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    getMessageSendTime(message.sentDate),
                    style: _theme.textTheme.bodyText1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
