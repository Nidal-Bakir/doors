import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'download_received_media_message_event.dart';
part 'download_received_media_message_state.dart';
part 'download_received_media_message_bloc.freezed.dart';

class DownloadReceivedMediaMessageBloc extends Bloc<
    DownloadReceivedMediaMessageEvent, DownloadReceivedMediaMessageState> {
  final ChatRepository _chatRepository;
  final LocalChatMessage _mediaMessage;

  late final StreamSubscription _connectionStatusStreamSubscription;
  StreamSubscription? _downloadMediaMessageStreamSubscription;

  DownloadReceivedMediaMessageBloc(this._chatRepository, this._mediaMessage)
      : super(DownloadReceivedMediaMessageInitial(_mediaMessage)) {
    on<DownloadReceivedMediaMessageEvent>((event, emit) async {
      await event.map(
        downloaded: (event) async => await _onMessageDownloaded(event, emit),
      );
    });

    _connectionStatusStreamSubscription =
        _chatRepository.connectionStatusSteam().listen((event) {
      final currentState = state;
      if (event == LiveQueryClientEvent.CONNECTED &&
          currentState is DownloadReceivedMediaMessageDownloadFailure &&
          currentState.error is NoConnectionException) {
        add(const DownloadReceivedMediaMessageDownloaded());
      }
    });
  }

  Future<void> _onMessageDownloaded(
    DownloadReceivedMediaMessageDownloaded event,
    Emitter<DownloadReceivedMediaMessageState> emit,
  ) async {
    Completer streamCompleter = Completer();
    emit(const DownloadReceivedMediaMessageInProgress());

    _downloadMediaMessageStreamSubscription =
        _chatRepository.downloadReceivedMediaMessage(_mediaMessage).listen(
      (event) {
        event.fold(
          (downloadProgress) => emit(
            DownloadReceivedMediaMessageDownloadInProgress(
              downloadProgress.head,
              downloadProgress.tail,
            ),
          ),
          (downloadedMediaMessage) {
            emit(DownloadReceivedMediaMessageDownloadSuccess(
                downloadedMediaMessage));
            streamCompleter.complete();
          },
        );
      },
      onError: (error) {
        emit(DownloadReceivedMediaMessageDownloadFailure(error));
        streamCompleter.complete();
      },
      cancelOnError: true,
    );

    await streamCompleter.future;
  }

  @override
  Future<void> close() {
    _connectionStatusStreamSubscription.cancel();
    _downloadMediaMessageStreamSubscription?.cancel();
    return super.close();
  }
}
