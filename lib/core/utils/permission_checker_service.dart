import 'package:doors/core/errors/user_error.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionCheckerService {
  /// Throws [StoragePermissionsException] in case of permission denied.
  /// Will attempt to request the permission it its denied by the user.
  static Future<void> checkStoragePermission() async {
    PermissionStatus storagePermissionStatus;
    storagePermissionStatus = await Permission.storage.status;
    if (storagePermissionStatus.isDenied) {
      storagePermissionStatus = await Permission.storage.request();
      if (storagePermissionStatus.isDenied) {
        throw const DeniedStoragePermissionsException();
      }
    }
    if (storagePermissionStatus.isPermanentlyDenied) {
      throw const PermanentlyDeniedStoragePermissionsException();
    }
  }

  /// Throws [LocationException] in case of permission denied
  /// or disabled location services.
  /// Will attempt to request the permission it its denied by the user.
  static Future<void> checkLocationPermission() async {
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
  }
}
