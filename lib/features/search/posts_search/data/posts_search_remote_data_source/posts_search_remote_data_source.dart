import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class PostsSearchRemoteDataSource {
  /// Search through services.
  ///
  /// [searchFilter]: The filter that will be applied to the search query,
  /// the filter will applied cumulatively to narrow down the search result.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded posts.
  ///
  /// Returns UnmodifiableListView of posts search results.
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<UnmodifiableListView<ServicePost>> searchPosts(
    SearchFilter searchFilter,
    int amountToSkip,
  );
}

class PostsSearchRemoteDataSourceImpl extends PostsSearchRemoteDataSource {
  @override
  Future<UnmodifiableListView<ServicePost>> searchPosts(
      SearchFilter searchFilter, int amountToSkip) async {
    QueryBuilder queryBuilder = QueryBuilder.name(ServicePost.keyClassName);
    _applySearchFilterOnPosts(searchFilter, queryBuilder);

    queryBuilder
      ..orderByDescending(ServicePost.keyPostCreationDate)
      ..includeObject([ServicePost.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    ParseResponse searchPostsResponse;
    try {
      searchPostsResponse = await queryBuilder.query();
    } catch (e) {
      throw const NoConnectionException('con\'t search posts');
    }

    if (searchPostsResponse.success &&
        searchPostsResponse.error == null &&
        searchPostsResponse.results != null) {
      return UnmodifiableListView(
        List<ServicePost>.from(
          searchPostsResponse.results!,
          growable: false,
        ),
      );
    } else {
      final error =
          ParseException.extractParseException(searchPostsResponse.error);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }

  /// Cumulatively apply each filter in single QueryBuilder
  void _applySearchFilterOnPosts(
    SearchFilter searchFilter,
    QueryBuilder queryBuilder,
  ) {
    if (searchFilter.title != null) {
      queryBuilder.whereContains(ServicePost.keyPostTitle, searchFilter.title!);
    }

    if (searchFilter.category != null) {
      queryBuilder.whereContains(ServicePost.keyPostCategory, searchFilter.category!);
    }

    if (searchFilter.maxCost != null && searchFilter.currency != null) {
      queryBuilder.whereLessThanOrEqualTo(
          ServicePost.keyPostMaxCost, searchFilter.maxCost);

      queryBuilder.whereEqualTo(
          ServicePost.keyPostCostCurrency, searchFilter.currency);
    }

    if (searchFilter.userGeoLocation != null &&
        searchFilter.maxDistanceInKiloMetres != null) {
      queryBuilder.whereWithinKilometers(
        ServicePost.keyPostLocation,
        searchFilter.userGeoLocation!,
        searchFilter.maxDistanceInKiloMetres!.toDouble(),
      );
    }

    if (searchFilter.keywords != null &&
        (searchFilter.keywords?.isNotEmpty ?? false)) {
      queryBuilder.whereArrayContainsAll(
          ServicePost.keyPostKeywords, searchFilter.keywords!.toList());
    }

    if (searchFilter.postType != null) {
      queryBuilder.whereEqualTo(ServicePost.keyPostType, searchFilter.postType!.name);
    }
  }
}
