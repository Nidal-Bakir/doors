part of 'user_rate_bloc.dart';

@freezed
class UserRateState with _$UserRateState {
  const factory UserRateState.inProgress() = UserRateInProgress;
  const factory UserRateState.loadSuccess(PostRate? postRate) = UserRateLoadSuccess;
  const factory UserRateState.loadFailure(ExceptionBase error) = UserRateLoadFailure;
}
