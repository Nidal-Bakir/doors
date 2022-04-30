import 'package:doors/core/errors/user_error.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserLocationLocalDataSource {
  Future<ParseGeoPoint> getUserLocationUsingGPS();
}

class UserLocationLocalDataSourceImpl extends UserLocationLocalDataSource {
  @override
  Future<ParseGeoPoint> getUserLocationUsingGPS() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw const DisabledLocationServicesException();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw const DeniedLocationPermissionsException();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw const PermanentlyDeniedLocationPermissionsException();
    }

    final location = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    return ParseGeoPoint(
      latitude: location.latitude,
      longitude: location.longitude,
    );
  }
}
