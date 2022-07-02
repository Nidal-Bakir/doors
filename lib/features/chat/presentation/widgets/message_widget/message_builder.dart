import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/image_message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/text_message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/unsupported_message_type_builder.dart';
import 'package:flutter/widgets.dart';

/// Chain of Responsibility design pattern
///
/// This is the BaseBuilder
abstract class MessageBuilder {
  final MessageBuilder? nextMessageBuilderHandler;

  MessageBuilder(this.nextMessageBuilderHandler);

  Widget build(LocalChatMessage message);
}

class MessageBuilderWidget {
  static MessageBuilderWidget? _instance;

  late final TextMessageBuilder _textMessageBuilder;
  late final ImageMessageBuilder _imageMessageBuilder;
  late final UnsupportedMessageTypeBuilder _unsupportedMessageTypeBuilder;

  MessageBuilderWidget._() {
    _unsupportedMessageTypeBuilder = UnsupportedMessageTypeBuilder();
    _imageMessageBuilder = ImageMessageBuilder(_unsupportedMessageTypeBuilder);
    _textMessageBuilder = TextMessageBuilder(_imageMessageBuilder);
  }

  static Widget buildMessage(LocalChatMessage message) {
    _instance ??= MessageBuilderWidget._();
    return _instance!._build(message);
  }

  Widget _build(LocalChatMessage message) {
    return _textMessageBuilder.build(message);
  }
}
