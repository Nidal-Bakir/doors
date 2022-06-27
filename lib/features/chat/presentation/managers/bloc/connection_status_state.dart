part of 'connection_status_bloc.dart';

@freezed
class ConnectionStatusState with _$ConnectionStatusState {
  const factory ConnectionStatusState.connecting() = ConnectionStatusConnecting;
  const factory ConnectionStatusState.connected() = ConnectionStatusConnected;
}
