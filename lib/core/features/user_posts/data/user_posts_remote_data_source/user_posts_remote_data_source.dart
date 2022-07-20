import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:doors/core/extensions/list/list_remove_blocked_posts.dart';

abstract class UserPostsRemoteDataSource {
  /// Get a list of user posts.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current
  /// loaded user posts
  ///
  /// [userId]: the user id for user which will get his posts.
  ///
  /// [postsClassName]: the class(table) name where the posts are present in the parse server.
  ///
  /// [relationFieldName]: Every user has a relation with its posts, this relation
  /// repressed as field in the userClass the [relationFieldName] is that name.
  ///
  /// Returns a UnmodifiableList of user posts
  ///
  /// Throws [ServerException]  In case of connection error or parse error.
  Future<UnmodifiableListView<Post>> getUserPosts({
    required int amountToSkip,
    required String userId,
    required String postsClassName,
    required String relationFieldName,
  });
}

class UserPostsRemoteDataSourceImpl extends UserPostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> getUserPosts({
    required int amountToSkip,
    required String userId,
    required String postsClassName,
    required String relationFieldName,
  }) async {
    final _currentUser = (await ParseUser.currentUser()) as User;

    final userPostsQuery = QueryBuilder.name(postsClassName)
      ..whereRelatedTo(relationFieldName, User.keyUserClassName, userId)
      ..orderByDescending(Post.keyPostCreationDate)
      ..includeObject([Post.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse listOfUserPostsResponse;
    try {
      listOfUserPostsResponse = await userPostsQuery.query();
    } catch (e) {
      throw const NoConnectionException('can not get a list of user posts');
    }
    if (listOfUserPostsResponse.success &&
        listOfUserPostsResponse.error == null &&
        listOfUserPostsResponse.result != null) {
      return UnmodifiableListView(
        List<Post>.from(
          listOfUserPostsResponse.results!,
        ).removeBlockedUsersPosts(_currentUser),
      );
    } else {
      final error =
          ParseException.extractParseException(listOfUserPostsResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
