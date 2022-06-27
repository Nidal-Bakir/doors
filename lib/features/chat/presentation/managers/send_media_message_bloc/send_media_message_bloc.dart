import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'send_media_message_event.dart';
part 'send_media_message_state.dart';
part 'send_media_message_bloc.freezed.dart';

class SendMediaMessageBloc
    extends Bloc<SendMediaMessageEvent, SendMediaMessageState> {
  final ChatRepository _chatRepository;
  final LocalChatMessage _mediaMessage;

  late final StreamSubscription _connectionStatusStreamSubscription;
  StreamSubscription? _sendingMediaMessageStreamSubscription;

  SendMediaMessageBloc(this._chatRepository, this._mediaMessage)
      : super(SendMediaMessageInitial(_mediaMessage)) {
    on<SendMediaMessageEvent>((event, emit) {
      event.map(
        messageSended: (event) => _onMessageSended(event, emit),
      );
    });

    _connectionStatusStreamSubscription =
        _chatRepository.connectionStatusSteam().listen((event) {
      final currentState = state;
      if (event == LiveQueryClientEvent.CONNECTED &&
          currentState is SendMediaMessageSendFailure &&
          currentState.error is NoConnectionException) {
        add(const SendMediaMessageMessageSended());
      }
    });
  }

  void _onMessageSended(
    SendMediaMessageMessageSended event,
    Emitter<SendMediaMessageState> emit,
  ) {
    emit(const SendMediaMessageInProgress());
    _sendingMediaMessageStreamSubscription =
        _chatRepository.sendMediaMessage(_mediaMessage).listen(
      (event) {
        event.fold(
          (uploadProgress) =>
              emit(SendMediaMessageUploadInProgress(uploadProgress)),
          (sendedMediaMessage) =>
              emit(SendMediaMessageSendSuccess(sendedMediaMessage)),
        );
      },
      onError: (error) {
        emit(SendMediaMessageSendFailure(error));
      },
      cancelOnError: true,
    );
  }

  @override
  Future<void> close() {
    _connectionStatusStreamSubscription.cancel();
    _sendingMediaMessageStreamSubscription?.cancel();
    return super.close();
  }
}
