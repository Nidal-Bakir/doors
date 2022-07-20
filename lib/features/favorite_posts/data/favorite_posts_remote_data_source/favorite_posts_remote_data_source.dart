import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:doors/core/extensions/list/list_remove_blocked_posts.dart';

abstract class FavoritePostsRemoteDataSource {
  /// Get a list of user favorite posts.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current
  /// loaded favorite posts.
  ///
  /// [viewFilter]: favorite posts type {services | jobs}
  ///
  /// Returns a UnmodifiableList of favorite posts
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<UnmodifiableListView<Post>> getFavoritePosts(
    int amountToSkip,
    PostsViewFilter viewFilter,
  );
}

class FavoritePostsRemoteDataSourceImpl extends FavoritePostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> getFavoritePosts(
    int amountToSkip,
    PostsViewFilter viewFilter,
  ) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have favorite posts');
    }

    var _relationFieldName = User.keyFavoriteServicePosts;
    switch (viewFilter) {
      case PostsViewFilter.services:
        _relationFieldName = User.keyFavoriteServicePosts;
        break;
      case PostsViewFilter.jobs:
        _relationFieldName = User.keyFavoriteJobPosts;
        break;
    }

    final userFavoritePostsQuery = QueryBuilder.name(viewFilter.className)
      ..whereRelatedTo(
          _relationFieldName, User.keyUserClassName, _currentUser.userId)
      ..includeObject([Post.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse listOfFavoritePostsResponse;
    try {
      listOfFavoritePostsResponse = await userFavoritePostsQuery.query();
    } catch (e) {
      throw const NoConnectionException('can not get a list of favorite posts');
    }
    if (listOfFavoritePostsResponse.success &&
        listOfFavoritePostsResponse.error == null &&
        listOfFavoritePostsResponse.result != null) {
      return UnmodifiableListView(
        List<Post>.from(
          listOfFavoritePostsResponse.results!,
        ).removeBlockedUsersPosts(_currentUser),
      );
    } else {
      final error = ParseException.extractParseException(
          listOfFavoritePostsResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
