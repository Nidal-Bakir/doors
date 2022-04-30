import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class City extends ParseObject with EquatableMixin implements ParseCloneable {
  City() : super.clone(keyClassName);

  City.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => City.clone(map)..fromJson(map);

  static const keyClassName = 'GeonamesAllCities';
  static const keyCityId = keyVarObjectId;
  static const keyCityName = 'name';
  static const keyCityAlternateNames = 'alternate_names';
  static const keyCityLocation = 'coordinates';
  static const keyCityCountryName = 'cou_name_en';

  String get cityName => get<String>(keyCityName) ?? 'Unknown';

  String get cityAlternateNames =>
      get<String>(keyCityAlternateNames) ?? 'Unknown';

  String get countryName => get<String>(keyCityCountryName) ?? 'Unknown';

  ParseGeoPoint? get cityLocation => get<ParseGeoPoint>(keyCityLocation);

  String getHumanReadableCityName() => countryName + ', ' + cityName;

  @override
  List<Object?> get props => [
        get<String?>(keyVarObjectId),
        cityName,
        countryName,
      ];
}
