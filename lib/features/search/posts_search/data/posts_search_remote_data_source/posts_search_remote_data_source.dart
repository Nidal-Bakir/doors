import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class PostsSearchRemoteDataSource {
  Future<UnmodifiableListView<Post>> searchPosts(
    SearchFilter searchFilter,
    int amountToSkip,
  );
}

class PostsSearchRemoteDataSourceImpl extends PostsSearchRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> searchPosts(
      SearchFilter searchFilter, int amountToSkip) async {
    QueryBuilder queryBuilder = QueryBuilder.name(Post.keyClassName);
    _applySearchFilterOnPosts(searchFilter, queryBuilder);

    queryBuilder
      ..orderByDescending(Post.keyPostCreationDate)
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

    if (searchFilter.maxCost != null && searchFilter.currency != null) {
      queryBuilder.whereLessThanOrEqualTo(
          Post.keyPostMaxCost, searchFilter.maxCost);

      queryBuilder.whereEqualTo(
          Post.keyPostCostCurrency, searchFilter.currency);
    }

    if (searchFilter.userGeoLocation != null &&
        searchFilter.maxDistanceInKiloMetres != null) {
      queryBuilder.whereWithinKilometers(
        Post.keyPostLocation,
        searchFilter.userGeoLocation!,
        searchFilter.maxDistanceInKiloMetres!.toDouble(),
      );
    }

    if (searchFilter.keywords != null &&
        (searchFilter.keywords?.isNotEmpty ?? false)) {
      queryBuilder.whereArrayContainsAll(
          Post.keyPostKeywords, searchFilter.keywords!.toList());
    }

    if (searchFilter.postType != null) {
      queryBuilder.whereEqualTo(Post.keyPostType, searchFilter.postType!.name);
    }
    
  }
}