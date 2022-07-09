import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/message_send_time_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:flutter/material.dart';

class UnsupportedMessageTypeBuilder extends MessageBuilder {
  UnsupportedMessageTypeBuilder() : super(null);

  @override
  Widget build(LocalChatMessage message) {
    return _UnsupportedMessageTypeBuilderWidget(
      message: message,
    );
  }
}

class _UnsupportedMessageTypeBuilderWidget extends StatelessWidget {
  final LocalChatMessage message;
  const _UnsupportedMessageTypeBuilderWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

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
                  context.loc
                      .unsupported_message_type_please_upgrade_your_app_to_latest_version,
                  style: _theme.textTheme.subtitle2,
                ),
              ),
              Positioned(
                bottom: 3,
                right: 10,
                child: MessageSendTimeWidget(
                  messageSendDateTime: message.sentDate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
