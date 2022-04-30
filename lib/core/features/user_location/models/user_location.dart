import 'package:doors/core/features/user_location/models/city.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserLocation extends Equatable {
  final ParseGeoPoint? userGeoLocation;
  final City? userCity;

  const UserLocation(this.userGeoLocation, this.userCity);
  @override
  List<Object?> get props => [userCity, userGeoLocation];
}
