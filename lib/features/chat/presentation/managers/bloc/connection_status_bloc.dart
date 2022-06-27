import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'connection_status_bloc.freezed.dart';
part 'connection_status_event.dart';
part 'connection_status_state.dart';

class ConnectionStatusBloc
    extends Bloc<ConnectionStatusEvent, ConnectionStatusState> {
  final ChatRepository _chatRepository;
  late final StreamSubscription _connectionStatusStreamSubscription;
  ConnectionStatusBloc(this._chatRepository)
      : super(const ConnectionStatusConnecting()) {
    on<ConnectionStatusEvent>((event, emit) {
      event.map(changed: (event) => _onConnectionStateChanged(event, emit));
    });

    _connectionStatusStreamSubscription =
        _chatRepository.connectionStatusSteam().listen((event) {
      add(ConnectionStatusChanged(event));
    });
  }

  void _onConnectionStateChanged(
    ConnectionStatusEvent event,
    Emitter<ConnectionStatusState> emit,
  ) {
    if (event.connectionState == LiveQueryClientEvent.CONNECTED) {
      emit(const ConnectionStatusConnected());
    } else {
      emit(const ConnectionStatusConnecting());
    }
  }

  @override
  Future<void> close() {
    _connectionStatusStreamSubscription.cancel();
    return super.close();
  }
}
