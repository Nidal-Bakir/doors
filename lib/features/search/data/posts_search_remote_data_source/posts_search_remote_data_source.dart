import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:doors/core/extensions/list/list_remove_blocked_posts.dart';

abstract class PostsSearchRemoteDataSource {
  /// Search through posts.
  ///
  /// [searchFilter]: The filter that will be applied to the search query,
  /// the filter will applied cumulatively to narrow down the search result.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded posts.
  ///
  /// [postsTypeToSearch]: posts type to search for (services | jobs).
  ///
  /// Returns UnmodifiableListView of posts search results.
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<UnmodifiableListView<Post>> searchPosts({
    required SearchFilter searchFilter,
    required PostsViewFilter postsTypeToSearch,
    required int amountToSkip,
  });
}

class PostsSearchRemoteDataSourceImpl extends PostsSearchRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> searchPosts({
    required SearchFilter searchFilter,
    required PostsViewFilter postsTypeToSearch,
    required int amountToSkip,
  }) async {
    final _currentUser = (await ParseUser.currentUser()) as User;

    QueryBuilder queryBuilder = QueryBuilder.name(postsTypeToSearch.className);
    _applySearchFilterOnPosts(searchFilter, queryBuilder);

    queryBuilder
      ..includeObject([Post.keyAuthor])
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
        List<Post>.from(
          searchPostsResponse.results!,
          growable: false,
        ).removeBlockedUsersPosts(_currentUser),
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
      queryBuilder.whereContains(Post.keyPostTitle, searchFilter.title!);
    }

    if (searchFilter.category != null) {
      queryBuilder.whereContains(Post.keyPostCategory, searchFilter.category!);
    }
    if (searchFilter.userGeoLocation != null &&
        searchFilter.maxDistanceInKiloMetres != null) {
      queryBuilder.whereWithinKilometers(
        Post.keyPostLocation,
        searchFilter.userGeoLocation!,
        searchFilter.maxDistanceInKiloMetres!.toDouble(),
      );
    }

    if (searchFilter.jobTypes != null &&
        searchFilter.jobTypes!.length != JobType.values.length) {
      queryBuilder.whereArrayContainsAll(JobPost.keyJobTypes,
          searchFilter.jobTypes!.map((e) => e.name).toList());
    }

    if (searchFilter.maxCost != null && searchFilter.currency != null) {
      queryBuilder.whereLessThanOrEqualTo(
          ServicePost.keyPostMaxCost, searchFilter.maxCost);

      queryBuilder.whereEqualTo(
          ServicePost.keyPostCostCurrency, searchFilter.currency);
    }

    if (searchFilter.keywords != null &&
        (searchFilter.keywords?.isNotEmpty ?? false)) {
      queryBuilder.whereArrayContainsAll(
          ServicePost.keyPostKeywords, searchFilter.keywords!.toList());
    }

    if (searchFilter.serviceType != null) {
      queryBuilder.whereEqualTo(
          ServicePost.keyPostType, searchFilter.serviceType!.name);
    }
  }
}
