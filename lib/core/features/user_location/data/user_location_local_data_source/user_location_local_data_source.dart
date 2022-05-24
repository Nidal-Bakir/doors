import 'package:doors/core/utils/permission_checker_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserLocationLocalDataSource {
  Future<ParseGeoPoint> getUserLocationUsingGPS();
}

class UserLocationLocalDataSourceImpl extends UserLocationLocalDataSource {
  @override
  Future<ParseGeoPoint> getUserLocationUsingGPS() async {
    await PermissionCheckerService.checkLocationPermission();

    final location = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    return ParseGeoPoint(
      latitude: location.latitude,
      longitude: location.longitude,
    );
  }
}
