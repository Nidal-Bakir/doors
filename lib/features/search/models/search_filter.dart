import 'package:doors/core/enums/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

part 'search_filter.freezed.dart';

@freezed
class SearchFilter with _$SearchFilter {
  factory SearchFilter({
    String? title,
    String? category,
    int? maxDistanceInKiloMetres,
    ParseGeoPoint? userGeoLocation,
    Set<String>? keywords,
    double? maxCost,
    String? currency,
    ServiceType? postType,
  }) = _SearchFilter;
}
