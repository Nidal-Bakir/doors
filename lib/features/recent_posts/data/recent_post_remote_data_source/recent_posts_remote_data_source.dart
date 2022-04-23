import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class RecentPostsRemoteDataSource {
  /// Get remote recent needed posts
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded posts
  ///
  /// Returns a list of recent needed posts
  ///
  /// Throws [ServerException].
  Future<UnmodifiableListView<Post>> getRemoteRecentNeededPosts(
      int amountToSkip);

  /// Get remote recent offered posts
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded posts
  ///
  /// Returns a list of recent offered posts
  ///
  /// Throws [ServerException].
  Future<UnmodifiableListView<Post>> getRemoteRecentOfferedPosts(
      int amountToSkip);
}

class RecentPostsRemoteDataSourceImpl extends RecentPostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> getRemoteRecentNeededPosts(
      int amountToSkip) async {
    return _loadPosts(amountToSkip, PostType.need);
  }

  @override
  Future<UnmodifiableListView<Post>> getRemoteRecentOfferedPosts(
      int amountToSkip) async {
    return _loadPosts(amountToSkip, PostType.offer);
  }
}

Future<UnmodifiableListView<Post>> _loadPosts(
    int amountToSkip, PostType postType) async {
  QueryBuilder queryBuilder = QueryBuilder.name(Post.keyClassName)
    ..whereEqualTo(Post.keyPostType, postType.name)
    ..orderByDescending(Post.keyPostCreation)
    ..includeObject([Post.keyAuthor])
    ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
    ..setAmountToSkip(amountToSkip)
    ..setLimit(GlobalConfig.amountOfResultPeerRequest);

  ParseResponse recentNeededPostsResponse;
  try {
    recentNeededPostsResponse = await queryBuilder.query();
  } on Exception {
    throw NoConnectionException('con\'t load recent ${postType.name} posts');
  }

  if (recentNeededPostsResponse.success &&
      recentNeededPostsResponse.error == null &&
      recentNeededPostsResponse.results != null) {
    return UnmodifiableListView(
      List<Post>.from(
        recentNeededPostsResponse.results!,
        growable: false,
      ),
    );
  } else {
    final error =
        ParseException.extractParseException(recentNeededPostsResponse.error!);
    // parse sdk will return error in case no results found
    if (error is ParseSuccessResponseWithNoResults) {
      return UnmodifiableListView(List.empty());
    }
    throw error;
  }
}
