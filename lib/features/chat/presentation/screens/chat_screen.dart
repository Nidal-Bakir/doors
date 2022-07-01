import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUserInfo;
  const ChatScreen({Key? key, required this.chatUserInfo}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _chatAnimatedListKey = GlobalKey<AnimatedListState>();
  final list = [
    LocalChatMessage.receivedMessage(
      isRead: true,
      mediaFile: null,
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.text.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage: 'fdsfsa dsfds fdfas',
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
      appBar: AppBar(),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: AnimatedList(
              key: _chatAnimatedListKey,
              initialItemCount: list.length,
              itemBuilder: (context, index, animation) {
                return _ReceivedTextMessageWidget(
                  message: list[index],
                );
              },
            ),
          ),
          Container(height: 50, color: Colors.red)
        ],
      ),
    );
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
      alignment: AlignmentDirectional.centerEnd,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
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
