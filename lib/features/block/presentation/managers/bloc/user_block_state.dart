part of 'user_block_bloc.dart';

@freezed
class UserBlockState with _$UserBlockState {
  const factory UserBlockState.initial() = UserBlockInitial;

  const factory UserBlockState.inProgress() = UserBlockInProgress;

  const factory UserBlockState.blockSuccess() = UserBlockBlockSuccess;

  const factory UserBlockState.unblockSuccess() = UserBlockUnblockSuccess;

  const factory UserBlockState.blockFailure(ServerException error) =
      UserBlockBlockFailure;

  const factory UserBlockState.unblockFailure(ServerException error) =
      UserBlockUnblockFailure;
}
