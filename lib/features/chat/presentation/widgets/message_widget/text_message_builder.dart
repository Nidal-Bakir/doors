import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';

class TextMessageBuilder extends MessageBuilder {
  TextMessageBuilder(MessageBuilder nextMessageBuilderHandler)
      : super(nextMessageBuilderHandler);

  @override
  Widget build(LocalChatMessage message) {
    if (message.messageType != MessageType.text.name) {
      return super.nextMessageBuilderHandler!.build(message);
    }

    return _TextMessageBuilderWidget(
      message: message,
    );
  }
}

class _TextMessageBuilderWidget extends StatelessWidget {
  final LocalChatMessage message;
  const _TextMessageBuilderWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.isSendedByCurrentUser) {
      return _SendedTextMessageWidget(message: message);
    } else {
      return _ReceivedTextMessageWidget(message: message);
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

class _SendedTextMessageWidget extends StatelessWidget {
  final LocalChatMessage message;
  const _SendedTextMessageWidget({Key? key, required this.message})
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
