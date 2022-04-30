part of 'user_location_bloc.dart';

@freezed
class UserLocationEvent with _$UserLocationEvent {
  const factory UserLocationEvent.determineUserLocationUsingGPSRequested() =
      UserLocationDetermineUserLocationUsingGPSRequested;
}
