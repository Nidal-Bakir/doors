import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/user_location/data/user_location_local_data_source/user_location_local_data_source.dart';
import 'package:doors/core/features/user_location/data/user_location_remote_data_source/user_location_remote_data_source.dart';
import 'package:doors/core/features/user_location/models/city.dart';
import 'package:doors/core/features/user_location/models/user_location.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UserLocationRepository {
  final UserLocationLocalDataSource _userLocationLocalDataSource;
  final UserLocationRemoteDataSource _userLocationRemoteDataSource;

  UserLocationRepository(
      this._userLocationLocalDataSource, this._userLocationRemoteDataSource);

  Future<Either<ServerException, List<City>>> getListOfCitiesMatchesString(
    String cityName,
  ) async {
    try {
      return Right(await _userLocationRemoteDataSource
          .getListOfCitiesMatchesString(cityName));
    } on ServerException catch (error) {
      return Left(error);
    }
  }

  Future<Either<ExceptionBase, UserLocation>> getUserLocationUsingGPS() async {
    final ParseGeoPoint _userCurrentLocation;
    try {
      _userCurrentLocation =
          await _userLocationLocalDataSource.getUserLocationUsingGPS();
    } on LocationException catch (error) {
      return Left(error);
    }

    final City? _userCity;
    try {
      _userCity = await _userLocationRemoteDataSource
          .getUserCityUsingGeoPoint(_userCurrentLocation);
    } on ServerException catch (error) {
      return Left(error);
    }
    return Right(UserLocation(_userCurrentLocation, _userCity));
  }
}
