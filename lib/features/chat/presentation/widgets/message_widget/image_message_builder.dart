import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/presentation/managers/download_received_media_message_bloc/download_received_media_message_bloc.dart';
import 'package:doors/features/chat/presentation/managers/send_media_message_bloc/send_media_message_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/chat_image_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_error_icon_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_send_time_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/messing_send_in_progress_icon_widget.dart';
import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

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
      if (message.messageStatues == MessageStatues.sent) {
        return _SendedImageMessageBuilderWidgetWithOutSendBloc(
          message: message,
        );
      } else {
        return _SendedImageMessageBuilderWidget(
          message: message,
        );
      }
    } else {
      if (message.mediaFile!.file == null) {
        return _ReceivedImageMessageBuilderWidget(
          message: message,
        );
      } else {
        return _ReceivedImageMessageBuilderWidgetWithOutDownloadBloc(
          message: message,
        );
      }
    }
  }
}

class _ReceivedImageMessageBuilderWidgetWithOutDownloadBloc
    extends StatelessWidget {
  final LocalChatMessage message;

  _ReceivedImageMessageBuilderWidgetWithOutDownloadBloc(
      {Key? key, required this.message})
      : super(key: key);

  late final _imageMessageMetaData =
      message.messageMetaData as ImageMessageMetaData;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _screenSize = MediaQuery.of(context).size;

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Card(
        elevation: 1,
        color: _theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: _screenSize.width * 0.7,
                  maxHeight: _screenSize.height * 0.4,
                ),
                child: AspectRatio(
                  aspectRatio: imageAspectRatio(_imageMessageMetaData),
                  child: ChatImageWidget(
                    fileImage: message.mediaFile!.file,
                    height: _imageMessageMetaData.imageHight.toDouble(),
                    width: _imageMessageMetaData.imageWidth.toDouble(),
                    errorBuilderWidget: ChatImageWidget(
                      fileImage: message.mediaFile!.thumbnailFile,
                      height: _imageMessageMetaData.imageHight.toDouble(),
                      width: _imageMessageMetaData.imageWidth.toDouble(),
                    ),
                  ),
                ),
              ),
              MessageSendTimeWidget(
                messageSendDateTime: message.sentDate,
              ),
            ],
          ),
        ),
      ),
    );
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
  late var _message = widget.message;
  late var _imageMessageMetaData =
      widget.message.messageMetaData as ImageMessageMetaData;
  late File? _displayedImage = _message.mediaFile!.thumbnailFile;

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _screenSize = MediaQuery.of(context).size;

    return BlocProvider<DownloadReceivedMediaMessageBloc>(
      create: (context) => GetIt.I.get<DownloadReceivedMediaMessageBloc>()
        ..add(
          const DownloadReceivedMediaMessageDownloaded(),
        ),
      child: Builder(builder: (context) {
        return BlocBuilder<DownloadReceivedMediaMessageBloc,
            DownloadReceivedMediaMessageState>(
          buildWhen: (previous, current) =>
              current is DownloadReceivedMediaMessageDownloadSuccess,
          builder: (context, state) {
            if (state is DownloadReceivedMediaMessageDownloadSuccess) {
              _message = state.mediaMessage;
              _imageMessageMetaData =
                  _message.messageMetaData as ImageMessageMetaData;
              _displayedImage = _message.mediaFile!.file;
            }
            return Align(
              alignment: AlignmentDirectional.centerStart,
              child: Card(
                elevation: 1,
                color: _theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: _screenSize.width * 0.7,
                          maxHeight: _screenSize.height * 0.4,
                        ),
                        child: AspectRatio(
                          aspectRatio: imageAspectRatio(_imageMessageMetaData),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ChatImageWidget(
                                  fileImage: _displayedImage,
                                  height: _imageMessageMetaData.imageHight
                                      .toDouble(),
                                  width: _imageMessageMetaData.imageWidth
                                      .toDouble(),
                                ),
                              ),
                              const _ImageDownLoadingProgressIndicator(),
                              const _RetryDownloadingButton(),
                              const _DownloadProgressPercent(),
                            ],
                          ),
                        ),
                      ),
                      _DownloadingStatusWithSendTime(
                        sendDate: _message.sentDate,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

class _ImageDownLoadingProgressIndicator extends StatelessWidget {
  const _ImageDownLoadingProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<DownloadReceivedMediaMessageBloc,
        DownloadReceivedMediaMessageState>(
      builder: (context, state) {
        if (state is DownloadReceivedMediaMessageDownloadInProgress) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: _theme.colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: CircularProgressIndicator(
                value: state.progress / state.total,
              ),
            ),
          );
        }
        if (state is DownloadReceivedMediaMessageInProgress ||
            (state is DownloadReceivedMediaMessageDownloadFailure &&
                state.error is NoConnectionException)) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: _theme.colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const CircularProgressIndicator(),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _RetryDownloadingButton extends StatelessWidget {
  const _RetryDownloadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<DownloadReceivedMediaMessageBloc,
        DownloadReceivedMediaMessageState>(
      builder: (context, state) {
        if (state is DownloadReceivedMediaMessageDownloadFailure &&
            state.error is! NoConnectionException) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _theme.colorScheme.primary.withOpacity(0.9),
              ),
              child: TextButton.icon(
                onPressed: () {
                  context.read<DownloadReceivedMediaMessageBloc>().add(
                        const DownloadReceivedMediaMessageDownloaded(),
                      );
                },
                icon: const Icon(Icons.replay_rounded),
                label: Text(context.loc.retry),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _DownloadProgressPercent extends StatelessWidget {
  const _DownloadProgressPercent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<DownloadReceivedMediaMessageBloc,
        DownloadReceivedMediaMessageState>(
      builder: (context, state) {
        if (state is DownloadReceivedMediaMessageDownloadInProgress) {
          return Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              margin: const EdgeInsetsDirectional.only(
                bottom: 4,
                end: 4,
              ),
              decoration: BoxDecoration(
                color: _theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  (state.progress / state.total).toStringAsFixed(0) + '%',
                  style: _theme.textTheme.bodyText2?.copyWith(
                    color: _theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _DownloadingStatusWithSendTime extends StatelessWidget {
  final DateTime sendDate;
  const _DownloadingStatusWithSendTime({Key? key, required this.sendDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadReceivedMediaMessageBloc,
        DownloadReceivedMediaMessageState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (state is DownloadReceivedMediaMessageDownloadFailure &&
                state.error is! NoConnectionException)
              const MessageErrorIconWidget(),
            const SizedBox(width: 4),
            MessageSendTimeWidget(
              messageSendDateTime: sendDate,
            ),
          ],
        );
      },
    );
  }
}

class _SendedImageMessageBuilderWidgetWithOutSendBloc extends StatelessWidget {
  final LocalChatMessage message;
  const _SendedImageMessageBuilderWidgetWithOutSendBloc(
      {Key? key, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imageMessageMetaData =
        (message.messageMetaData as ImageMessageMetaData);
    final _screenSize = MediaQuery.of(context).size;
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: _screenSize.width * 0.7,
                  maxHeight: _screenSize.height * 0.4,
                ),
                child: AspectRatio(
                  aspectRatio: imageAspectRatio(_imageMessageMetaData),
                  child: ChatImageWidget(
                    fileImage: message.mediaFile!.file,
                    height: _imageMessageMetaData.imageHight.toDouble(),
                    width: _imageMessageMetaData.imageWidth.toDouble(),
                  ),
                ),
              ),
              MessageSendTimeWidget(
                messageSendDateTime: message.sentDate,
              ),
            ],
          ),
        ),
      ),
    );
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
  late var _message = widget.message;
  late var _imageMessageMetaData =
      widget.message.messageMetaData as ImageMessageMetaData;

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return BlocProvider<SendMediaMessageBloc>(
      create: (context) => GetIt.I.get<SendMediaMessageBloc>(param1: _message)
        ..add(
          const SendMediaMessageMessageSended(),
        ),
      child: Builder(builder: (context) {
        return BlocBuilder<SendMediaMessageBloc, SendMediaMessageState>(
          buildWhen: (previous, current) =>
              current is SendMediaMessageSendSuccess,
          builder: (context, state) {
            if (state is SendMediaMessageSendSuccess) {
              _message = state.mediaMessage;
              _imageMessageMetaData =
                  _message.messageMetaData as ImageMessageMetaData;
            }
            return Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Card(
                elevation: 1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: _screenSize.width * 0.7,
                          maxHeight: _screenSize.height * 0.4,
                        ),
                        child: AspectRatio(
                          aspectRatio: imageAspectRatio(_imageMessageMetaData),
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: ChatImageWidget(
                                  fileImage: _message.mediaFile!.file,
                                  height: _imageMessageMetaData.imageHight
                                      .toDouble(),
                                  width: _imageMessageMetaData.imageWidth
                                      .toDouble(),
                                ),
                              ),
                              const _ImageUploadingProgressIndicator(),
                              const _RetryUploadingButton(),
                              const _UploadProgressPercent(),
                            ],
                          ),
                        ),
                      ),
                      _SendingStatusWithSendTime(sendDate: _message.sentDate)
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}

class _ImageUploadingProgressIndicator extends StatelessWidget {
  const _ImageUploadingProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<SendMediaMessageBloc, SendMediaMessageState>(
      builder: (context, state) {
        if (state is SendMediaMessageUploadInProgress) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: _theme.colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: CircularProgressIndicator(
                value: state.progress / state.total,
              ),
            ),
          );
        }
        if (state is SendMediaMessageInProgress ||
            (state is SendMediaMessageSendFailure &&
                state.error is NoConnectionException)) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0,
                    color: _theme.colorScheme.secondary.withOpacity(0.5),
                    spreadRadius: 8,
                  )
                ],
                borderRadius: BorderRadius.circular(25),
              ),
              child: const CircularProgressIndicator(),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _RetryUploadingButton extends StatelessWidget {
  const _RetryUploadingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<SendMediaMessageBloc, SendMediaMessageState>(
      builder: (context, state) {
        if (state is SendMediaMessageSendFailure &&
            state.error is! NoConnectionException) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: _theme.colorScheme.primary.withOpacity(0.9),
              ),
              child: TextButton.icon(
                onPressed: () {
                  context.read<SendMediaMessageBloc>().add(
                        const SendMediaMessageMessageSended(),
                      );
                },
                icon: const Icon(Icons.replay_rounded),
                label: Text(context.loc.retry),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _UploadProgressPercent extends StatelessWidget {
  const _UploadProgressPercent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return BlocBuilder<SendMediaMessageBloc, SendMediaMessageState>(
      builder: (context, state) {
        if (state is SendMediaMessageUploadInProgress) {
          return Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              margin: const EdgeInsetsDirectional.only(
                bottom: 4,
                end: 4,
              ),
              decoration: BoxDecoration(
                color: _theme.colorScheme.secondary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Text(
                  (state.progress / state.total).toStringAsFixed(0) + '%',
                  style: _theme.textTheme.bodyText2?.copyWith(
                    color: _theme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class _SendingStatusWithSendTime extends StatelessWidget {
  final DateTime sendDate;
  const _SendingStatusWithSendTime({Key? key, required this.sendDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendMediaMessageBloc, SendMediaMessageState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            MessageSendTimeWidget(
              messageSendDateTime: sendDate,
            ),
            if (state is SendMediaMessageInProgress ||
                state is SendMediaMessageUploadInProgress ||
                (state is SendMediaMessageSendFailure &&
                    state.error is NoConnectionException))
              const MessageSendInProgressIconWidget(),
            if (state is SendMediaMessageSendFailure &&
                state.error is! NoConnectionException)
              const MessageErrorIconWidget(),
          ],
        );
      },
    );
  }
}
