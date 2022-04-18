import 'package:geolocator/geolocator.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

extension ComputeDistance on ParseGeoPoint {
  /// Returns the distance between two GeoPoint, in kilometers.
  double computeDistanceInKilometers(ParseGeoPoint otherGeoPoint) =>
      (Geolocator.distanceBetween(
        otherGeoPoint.latitude,
        otherGeoPoint.longitude,
        latitude,
        longitude,
      )) /
      1000; //Geolocator.distanceBetween returns the distance in meters.
}
