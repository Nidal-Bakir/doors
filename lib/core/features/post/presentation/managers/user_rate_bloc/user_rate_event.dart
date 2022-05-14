part of 'user_rate_bloc.dart';

@freezed
class UserRateEvent with _$UserRateEvent {
  const factory UserRateEvent.loaded(ServicePost post) = UserRateLoaded;
  const factory UserRateEvent.posted(PostRate postRate) = UserRatePosted;
}
