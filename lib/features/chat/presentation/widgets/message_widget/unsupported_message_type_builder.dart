import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:flutter/material.dart';

class UnsupportedMessageTypeBuilder extends MessageBuilder {
  UnsupportedMessageTypeBuilder() : super(null);

  @override
  Widget build(LocalChatMessage message) {
    return const _UnsupportedMessageTypeBuilderWidget();
  }
}

class _UnsupportedMessageTypeBuilderWidget extends StatelessWidget {
  const _UnsupportedMessageTypeBuilderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
