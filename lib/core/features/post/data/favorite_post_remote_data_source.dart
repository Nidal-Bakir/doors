import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class FavoritePostRemoteDataSource {
  /// Add a [post] to the favorite posts list for the current user
  ///
  /// Returns future that resolve with void to indicate that the adding operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<void> addPostToUserFavoriteList(Post post);

  /// Remove a post from the favorite posts list for the current user
  ///
  /// Returns future that resolve with void to indicate that the remove operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<void> removePostFromUserFavoriteList(Post favoritePost);

  /// Check if the [post] was added to the current user favorite list or not.
  ///
  /// Returns future that resolve with true if the post was added to user favorite list,
  /// false otherwise.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<bool> isFavoritePost(Post post);
}

class FavoritePostRemoteDataSourceImpl extends FavoritePostRemoteDataSource {
  @override
  Future<void> addPostToUserFavoriteList(Post post) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not favorite posts');
    }

    _currentUser.addToFavoriteList(post);

    final ParseResponse savePostAsFavoriteResponse;
    try {
      savePostAsFavoriteResponse = await _currentUser.update();
    } catch (e) {
      throw const NoConnectionException('can not save post as favorite post ');
    }
    if (!savePostAsFavoriteResponse.success &&
        savePostAsFavoriteResponse.error != null) {
      throw ParseException.extractParseException(
          savePostAsFavoriteResponse.error!);
    }
  }

  @override
  Future<void> removePostFromUserFavoriteList(Post favoritePost) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not remove favorite posts');
    }
    _currentUser.removeFromFavoriteList(favoritePost);

    final ParseResponse removePostFromFavoritePostsResponse;
    try {
      removePostFromFavoritePostsResponse = await _currentUser.update();
    } catch (e) {
      throw const NoConnectionException(
          'can not remove post from favorite posts ');
    }
    if (!removePostFromFavoritePostsResponse.success &&
        removePostFromFavoritePostsResponse.error != null) {
      throw ParseException.extractParseException(
          removePostFromFavoritePostsResponse.error!);
    }
  }

  @override
  Future<bool> isFavoritePost(Post post) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have favorite posts');
    }

    final userFavoritePostsQuery = QueryBuilder.name(post.className)
      ..whereRelatedTo(
        post is JobPost
            ? User.keyFavoriteJobPosts
            : User.keyFavoriteServicePosts,
        User.keyUserClassName,
        _currentUser.userId,
      )
      ..whereEqualTo(Post.keyPostId, post.postId);

    final ParseResponse isFavoritePostResponse;
    try {
      isFavoritePostResponse = await userFavoritePostsQuery.count();
    } catch (e) {
      throw const NoConnectionException(
          'can not determine if it\'s a favorite post or not');
    }
    if (isFavoritePostResponse.success &&
        isFavoritePostResponse.error == null &&
        isFavoritePostResponse.count != 0) {
      return true;
    } else {
      final error =
          ParseException.extractParseException(isFavoritePostResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return false;
      }
      throw error;
    }
  }
}
