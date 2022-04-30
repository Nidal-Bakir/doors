import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/user_location/models/city.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserLocationRemoteDataSource {
  Future<City?> getUserCityUsingGeoPoint(ParseGeoPoint userLocation);
  Future<List<City>> getListOfCitiesMatchesString(String cityName);
}

class UserLocationRemoteDataSourceImpl extends UserLocationRemoteDataSource {
  final List<City> _tempCacheFetchedCities = [];
  String _lastSearchedCityName = '';
  @override
  Future<List<City>> getListOfCitiesMatchesString(String cityName) async {
    if (_lastSearchedCityName != cityName) {
      _tempCacheFetchedCities.clear();
      _lastSearchedCityName = cityName;
    }
    final _citiesNameQueryBuilder = QueryBuilder.name(City.keyClassName);
    _citiesNameQueryBuilder.whereContains(City.keyCityName, cityName);

    final _citiesAlternateNamesQueryBuilder =
        QueryBuilder.name(City.keyClassName);
    _citiesAlternateNamesQueryBuilder.whereContains(
        City.keyCityAlternateNames, cityName);

    final _citiesCountryNameQueryBuilder = QueryBuilder.name(City.keyClassName);
    _citiesCountryNameQueryBuilder.whereContains(
        City.keyCityCountryName, cityName);

    final _mainCitiesQueryBuilder = QueryBuilder.or(
      City(),
      [
        _citiesNameQueryBuilder,
        _citiesAlternateNamesQueryBuilder,
        _citiesCountryNameQueryBuilder
      ],
    );

    _mainCitiesQueryBuilder.setAmountToSkip(_tempCacheFetchedCities.length);
    _mainCitiesQueryBuilder.setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse citiesQueryResponse;
    try {
      citiesQueryResponse = await _mainCitiesQueryBuilder.query();
    } on Exception {
      throw const NoConnectionException('can not get list of cites');
    }
    if (citiesQueryResponse.success &&
        citiesQueryResponse.error == null &&
        citiesQueryResponse.results != null) {
      final _citiesSearchResult = List<City>.from(citiesQueryResponse.results!);
      _tempCacheFetchedCities.addAll(_citiesSearchResult);
      return _tempCacheFetchedCities;
    }
    if (citiesQueryResponse.error != null) {
      final error =
          ParseException.extractParseException(citiesQueryResponse.error);
      if (error is ParseSuccessResponseWithNoResults) {
        return [];
      }
      throw error;
    }
    return [];
  }

  @override
  Future<City?> getUserCityUsingGeoPoint(ParseGeoPoint userLocation) async {
    final _nearestCityFromUserLocationQueryBuilder =
        QueryBuilder.name(City.keyClassName);
        
    _nearestCityFromUserLocationQueryBuilder.whereNear(
        City.keyCityLocation, userLocation);
    _nearestCityFromUserLocationQueryBuilder.setLimit(1);

    final ParseResponse _nearestCityFromUserLocationResponse;

    try {
      _nearestCityFromUserLocationResponse =
          await _nearestCityFromUserLocationQueryBuilder.query();
    } on Exception {
      throw const NoConnectionException(
          'can not get nearest city from user location');
    }
    if (_nearestCityFromUserLocationResponse.success &&
        _nearestCityFromUserLocationResponse.error == null &&
        _nearestCityFromUserLocationResponse.results != null) {
      return _nearestCityFromUserLocationResponse.results!.first;
    }
    if (_nearestCityFromUserLocationResponse.error != null) {
      final error = ParseException.extractParseException(
          _nearestCityFromUserLocationResponse.error);
      if (error is ParseSuccessResponseWithNoResults) {
        return null;
      }
      throw error;
    }
    return null;
  }
}
