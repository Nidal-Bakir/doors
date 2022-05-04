import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/user_posts/data/user_posts_local_data_source/user_posts_local_data_source.dart';
import 'package:doors/features/user_posts/data/user_posts_remote_data_source/user_posts_remote_data_source.dart';

class UserPostsRepository {
  final UserPostsRemoteDataSource _userPostsRemoteDataSource;
  final UserPostsLocalDataSource _userPostsLocalDataSource;

  UserPostsRepository(
      this._userPostsRemoteDataSource, this._userPostsLocalDataSource);

  /// Get a list of user post for the current user.
  ///
  /// Returns either [UnmodifiableListView] holding the user posts
  ///
  /// OR [Tuple2<ExceptionBase, UnmodifiableListView]:
  /// * head: (the error)
  ///   * [ServerException] in case of connection error or parse error.
  ///   * [AnonymousException] if the user is Anonymous user
  /// * tail: (cached data)
  ///   * holding the local cached user posts
  Future<EitherDataOrDataWithError<ExceptionBase, Post>> getUserPosts({
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _userPostsLocalDataSource.clearCache();
    }
    final cachedPostsCount =
        await _userPostsLocalDataSource.getCountOfCachedUserPosts();

    UnmodifiableListView<Post> newFavoritePosts;
    try {
      newFavoritePosts = await _userPostsRemoteDataSource
          .getUserPosts(cachedPostsCount);
    } on ExceptionBase catch (exception) {
      return Left(
        Tuple2(
          exception,
          await _userPostsLocalDataSource.getLocalUserPosts(),
        ),
      );
    }

    await _userPostsLocalDataSource
        .appendLocalUserPosts(newFavoritePosts);

    return right(await _userPostsLocalDataSource.getLocalUserPosts());
  }
}
