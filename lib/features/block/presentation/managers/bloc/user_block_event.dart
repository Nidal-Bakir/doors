part of 'user_block_bloc.dart';

@freezed
class UserBlockEvent with _$UserBlockEvent {
  const factory UserBlockEvent.blocked(
    String remoteUserId,
  ) = UserBlockBlocked;

  const factory UserBlockEvent.unblocked(
    String remoteUserId,
  ) = UserBlockUnblocked;
}
