part of 'user_location_bloc.dart';

@freezed
class UserLocationState with _$UserLocationState {
  const factory UserLocationState.initial() = UserLocationInitial;
  const factory UserLocationState.inProgress() = UserLocationInProgress;
  const factory UserLocationState.gpsBasedLoadSuccuss(UserLocation userLocation) = GpsBasedLoadSuccuss;
  const factory UserLocationState.operationFailure(ExceptionBase error) =
     UserLocationOperationFailure;
}
