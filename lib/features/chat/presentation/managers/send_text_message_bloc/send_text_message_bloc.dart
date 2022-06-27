import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'send_text_message_event.dart';
part 'send_text_message_state.dart';
part 'send_text_message_bloc.freezed.dart';

class SendTextMessageBloc
    extends Bloc<SendTextMessageEvent, SendTextMessageState> {
  final ChatRepository _chatRepository;
  final LocalChatMessage _textMessage;
  late final StreamSubscription _connectionStatusStreamSubscription;

  SendTextMessageBloc(this._chatRepository, this._textMessage)
      : super(SendTextMessageInitial(_textMessage)) {
    on<SendTextMessageEvent>((event, emit) async {
      await event.map(
          messageSended: (event) async => await _onMessageSended(event, emit));
    });

    _connectionStatusStreamSubscription =
        _chatRepository.connectionStatusSteam().listen((event) {
      final currentState = state;
      if (event == LiveQueryClientEvent.CONNECTED &&
          currentState is SendTextMessageSendFailure &&
          currentState.error is NoConnectionException) {
        add(const SendTextMessageMessageSended());
      }
    });
  }

  Future<void> _onMessageSended(
    SendTextMessageMessageSended event,
    Emitter<SendTextMessageState> emit,
  ) async {
    emit(const SendTextMessageInProgress());

    final sendTextMessageResult =
        await _chatRepository.sendTextMessage(_textMessage);

    sendTextMessageResult.fold(
      (error) => emit(SendTextMessageSendFailure(error)),
      (sendedTextMessage) =>
          emit(SendTextMessageSendSuccess(sendedTextMessage)),
    );
  }

  @override
  Future<void> close() {
    _connectionStatusStreamSubscription.cancel();
    return super.close();
  }
}
