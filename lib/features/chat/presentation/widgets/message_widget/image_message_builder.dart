import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:flutter/material.dart';

class ImageMessageBuilder extends MessageBuilder {
  ImageMessageBuilder(MessageBuilder nextMessageBuilderHandler)
      : super(nextMessageBuilderHandler);

  @override
  Widget build(LocalChatMessage message) {
    if (message.messageType != MessageType.image.name) {
      return super.nextMessageBuilderHandler!.build(message);
    }

    return _ImageMessageBuilderWidget(
      message: message,
    );
  }
}

class _ImageMessageBuilderWidget extends StatelessWidget {
  final LocalChatMessage message;
  const _ImageMessageBuilderWidget({Key? key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (message.isSendedByCurrentUser) {
      return _SendedImageMessageBuilderWidget(message: message);
    } else {
      return _ReceivedImageMessageBuilderWidget(message: message);
    }
  }
}

class _ReceivedImageMessageBuilderWidget extends StatefulWidget {
  final LocalChatMessage message;
  const _ReceivedImageMessageBuilderWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  State<_ReceivedImageMessageBuilderWidget> createState() =>
      __ReceivedImageMessageStateBuilderWidget();
}

class __ReceivedImageMessageStateBuilderWidget
    extends State<_ReceivedImageMessageBuilderWidget> {
  late LocalChatMessage _message = widget.message;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _SendedImageMessageBuilderWidget extends StatefulWidget {
  final LocalChatMessage message;

  const _SendedImageMessageBuilderWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  State<_SendedImageMessageBuilderWidget> createState() =>
      __SendedImageMessageBuilderWidgetState();
}

class __SendedImageMessageBuilderWidgetState
    extends State<_SendedImageMessageBuilderWidget> {
  late LocalChatMessage _message = widget.message;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
