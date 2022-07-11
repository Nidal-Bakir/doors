import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/managers/send_text_message_bloc/send_text_message_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/message_error_icon_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_send_time_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/messing_send_in_progress_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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
      if (message.messageStatues == MessageStatues.sent) {
        return _SendedTextMessageWidgetWithOutSendTextBloc(
          message: message,
        );
      } else {
        return _SendedTextMessageWidget(message: message);
      }
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
                child: MessageSendTimeWidget(
                  messageSendDateTime: message.sentDate,
                ),
              ),

              // to make the min width size of the message as small as time widget
              Opacity(
                opacity: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MessageSendTimeWidget(
                    messageSendDateTime: message.sentDate,
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

class _SendedTextMessageWidgetWithOutSendTextBloc extends StatelessWidget {
  final LocalChatMessage message;
  const _SendedTextMessageWidgetWithOutSendTextBloc(
      {Key? key, required this.message})
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
                  bottom: 25,
                ),
                child: Text(
                  message.textMessage!,
                  style: _theme.textTheme.subtitle2,
                ),
              ),
              Positioned(
                bottom: 3,
                right: 10,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    MessageSendTimeWidget(
                      messageSendDateTime: message.sentDate,
                    ),
                  ],
                ),
              ),

              // to make the min width size of the message as small as time widget
              Opacity(
                opacity: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MessageSendTimeWidget(
                        messageSendDateTime: message.sentDate,
                      ),
                    ],
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

class _SendedTextMessageWidget extends StatefulWidget {
  final LocalChatMessage message;
  const _SendedTextMessageWidget({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  State<_SendedTextMessageWidget> createState() =>
      _SendedTextMessageWidgetState();
}

class _SendedTextMessageWidgetState extends State<_SendedTextMessageWidget> {
  late LocalChatMessage _message = widget.message;
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return BlocProvider<SendTextMessageBloc>(
      create: (context) {
        return GetIt.I.get<SendTextMessageBloc>(param1: _message)
          ..add(const SendTextMessageMessageSended());
      },
      child: Builder(builder: (context) {
        return BlocBuilder<SendTextMessageBloc, SendTextMessageState>(
            builder: (context, state) {
          state.whenOrNull(sendSuccess: (sendedTextMessage) {
            _message = sendedTextMessage;
          });

          return Align(
            alignment: AlignmentDirectional.centerEnd,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width - 45,
              ),
              child: GestureDetector(
                onTapUp: (tapUpDetails) {
                  state.whenOrNull(
                    sendFailure: (error) {
                      if (error is! NoConnectionException) {
                        _showPopupMenu(context, tapUpDetails);
                      }
                    },
                  );
                },
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          start: 10,
                          end: 10,
                          top: 5,
                          bottom: 25,
                        ),
                        child: Text(
                          _message.textMessage!,
                          style: _theme.textTheme.subtitle2,
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        right: 10,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            MessageSendTimeWidget(
                              messageSendDateTime: _message.sentDate,
                            ),
                            const SizedBox(width: 4),
                            if (state is SendTextMessageInProgress ||
                                (state is SendTextMessageSendFailure &&
                                    state.error is NoConnectionException))
                              const MessageSendInProgressIconWidget(),
                            if (state is SendTextMessageSendFailure &&
                                state.error is! NoConnectionException)
                              const MessageErrorIconWidget(),
                          ],
                        ),
                      ),

                      // to make the min width size of the message as small as time widget
                      Opacity(
                        opacity: 0.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              MessageSendTimeWidget(
                                messageSendDateTime: _message.sentDate,
                              ),
                              const SizedBox(width: 4),
                              if (state is SendTextMessageInProgress ||
                                  (state is SendTextMessageSendFailure &&
                                      state.error is NoConnectionException))
                                const MessageSendInProgressIconWidget(),
                              if (state is SendTextMessageSendFailure &&
                                  state.error is! NoConnectionException)
                                const MessageErrorIconWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
      }),
    );
  }

  Future<void> _showPopupMenu(
    BuildContext context,
    TapUpDetails tapUpDetails,
  ) async {
    final result = await showMenu<int>(
      context: context,
      position: RelativeRect.fromLTRB(
        tapUpDetails.globalPosition.dx - 50,
        tapUpDetails.globalPosition.dy - 70,
        tapUpDetails.globalPosition.dx - 50,
        0,
      ),
      items: [
        PopupMenuItem<int>(
          child: Text(context.loc.retry),
          value: 0,
        ),
      ],
    );

    if (result == 0) {
      context
          .read<SendTextMessageBloc>()
          .add(const SendTextMessageMessageSended());
    }
  }
}
