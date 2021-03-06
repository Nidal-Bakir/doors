import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_local_data_source/favorite_posts_local_data_source.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_remote_data_source/favorite_posts_remote_data_source.dart';

class FavoritePostsRepository {
  final FavoritePostsRemoteDataSource _favoritePostsRemoteDataSource;
  final FavoritePostsLocalDataSource _favoritePostsLocalDataSource;

  FavoritePostsRepository(
      this._favoritePostsRemoteDataSource, this._favoritePostsLocalDataSource);

  /// Get a list of favorite post for the current user.
  /// 
  /// [viewFilter] favorite posts type {services | jobs}
  /// 
  /// Returns either [UnmodifiableListView] holding the favorite posts
  ///
  /// OR [Tuple2<ExceptionBase, UnmodifiableListView] :
  /// * head: (the error)
  ///   * [ServerException] in case of connection error or parse error.
  ///   * [AnonymousException] if the user is Anonymous user
  /// * tail: (cached data)
  ///   * holding the local cached favorite posts
  Future<EitherDataOrDataWithError<ExceptionBase, Post>> getFavoritePosts({
    required PostsViewFilter viewFilter,
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _favoritePostsLocalDataSource.clearCache();
    }
    final cachedPostsCount = await _favoritePostsLocalDataSource
        .getCountOfCachedFavoritePosts(viewFilter);

    UnmodifiableListView<Post> newFavoritePosts;
    try {
      newFavoritePosts = await _favoritePostsRemoteDataSource.getFavoritePosts(
          cachedPostsCount, viewFilter);
    } on ExceptionBase catch (exception) {
      return Left(
        Tuple2(
          exception,
          await _favoritePostsLocalDataSource.getLocalFavoritePosts(viewFilter),
        ),
      );
    }

    await _favoritePostsLocalDataSource
        .appendLocalFavoritePosts(newFavoritePosts);

    return right(
        await _favoritePostsLocalDataSource.getLocalFavoritePosts(viewFilter));
  }
}
