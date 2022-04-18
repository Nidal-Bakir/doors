import 'dart:collection';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:mocktail/mocktail.dart';
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
  QueryBuilder queryBuilder = QueryBuilder.name(Post.keyClassName);
  queryBuilder.whereEqualTo(Post.keyPostType, postType.name);
  queryBuilder.orderByDescending(Post.keyPostCreation);
  queryBuilder.includeObject([Post.keyAuthor]);
  queryBuilder.excludeKeys([
    User.keyAccountStatues,
    User.keyIsSubscribed,
    User.keyUserSubscription,
    User.keyPaypalEmail,
  ]);
  queryBuilder.setAmountToSkip(amountToSkip);
  queryBuilder.setLimit(20);

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

class FakePost extends Fake implements Post {
  final url = 'https://dummyimage.com/600x400/89f50e/5d62a6.jpg';

  @override
  String get postDescription =>
      'My laptop is broken any one can help me to fix this problem ';
  @override
  // TODO: implement postCategory
  String get postCategory => 'IT';
  @override
  String? get postCostCurrency => '\$';
  @override
  // TODO: implement postId
  String get postId => 'id';
  @override
  // TODO: implement postImage
  ParseFile get postImage => ParseFile(null, name: 'post image', url: url);
  @override
  // TODO: implement postKeywords
  List<String> get postKeywords => ['IT', 'phone', 'fix'];
  @override
  // TODO: implement postHumanReadableLocation
  String get postHumanReadableLocation => 'homse syria';
  @override
  // TODO: implement postLocation
  ParseGeoPoint get postLocation => ParseGeoPoint();
  @override
  // TODO: implement postRate
  String get postRate => '5.5';
  @override
  // TODO: implement postTitle
  String get postTitle => 'the title of the post';
  @override
  // TODO: implement postType
  PostType get postType => PostType.offer;
  @override
  // TODO: implement minCost
  double? get minCost => 1.1;
  @override
  // TODO: implement maxCost
  double? get maxCost => 5.5;

  @override
  // TODO: implement author
  User get author => User('nidal@g', null, 'emailAddress')
    ..profileImage = ParseFile(null, name: 'image', url: url)
    ..accountType = AccountType.user
    ..name = 'nidal'
    ..bio = 'bio'
    ..userLocation = ParseGeoPoint();
}
