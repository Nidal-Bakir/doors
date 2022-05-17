import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/user_posts/data/user_posts_local_data_source/user_posts_local_data_source.dart';
import 'package:doors/core/features/user_posts/data/user_posts_remote_data_source/user_posts_remote_data_source.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';

class UserPostsRepository {
  final UserPostsRemoteDataSource _userPostsRemoteDataSource;
  final UserPostsLocalDataSource _userPostsLocalDataSource;

  UserPostsRepository(
    this._userPostsRemoteDataSource,
    this._userPostsLocalDataSource,
  );

  /// Get posts published by a user [userId].
  ///
  /// [userId]: the user id for user which will get his posts.
  ///
  /// [postsClassName]: the class(table) name where the posts are present in the parse server.
  ///
  /// [relationFieldName]: Every user has a relation with its posts, this relation
  /// repressed as field in the userClass the [relationFieldName] is that name.
  ///
  /// Returns either [UnmodifiableListView] holding the user posts
  ///
  /// OR [Tuple2<ExceptionBase, UnmodifiableListView]:
  /// * head: (the error)
  ///   * [ServerException] in case of connection error or parse error.
  /// * tail: (cached data)
  ///   * holding the local cached user posts
  Future<EitherDataOrDataWithError<ServerException, Post>> getUserPosts({
    bool fullRefresh = false,
    required String userId,
    required String postsClassName,
    required String relationFieldName,
  }) async {
    if (fullRefresh) {
      await _userPostsLocalDataSource.clearCache();
    }
    final cachedPostsCount =
        await _userPostsLocalDataSource.getCountOfCachedUserPosts();

    UnmodifiableListView<Post> newFavoritePosts;
    try {
      newFavoritePosts = await _userPostsRemoteDataSource.getUserPosts(
        amountToSkip: cachedPostsCount,
        userId: userId,
        postsClassName: postsClassName,
        relationFieldName: relationFieldName,
      );
    } on ServerException catch (exception) {
      return Left(
        Tuple2(
          exception,
          await _userPostsLocalDataSource.getLocalUserPosts(),
        ),
      );
    }

    await _userPostsLocalDataSource.appendLocalUserPosts(newFavoritePosts);

    return right(await _userPostsLocalDataSource.getLocalUserPosts());
  }
}
