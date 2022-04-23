import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_local_data_source/favorite_posts_local_data_source.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_remote_data_source/favorite_posts_remote_data_source.dart';

class FavoritePostsRepository {
  final FavoritePostsRemoteDataSource _favoritePostsRemoteDataSource;
  final FavoritePostsLocalDataSource _favoritePostsLocalDataSource;

  FavoritePostsRepository(
      this._favoritePostsRemoteDataSource, this._favoritePostsLocalDataSource);

  Future<EitherDataOrDataWithError<ExceptionBase, Post>> getFavoritePosts({
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _favoritePostsLocalDataSource.clearCache();
    }
    final cachedPostsCount =
        await _favoritePostsLocalDataSource.getCountOfCachedFavoritePosts();

    UnmodifiableListView<Post> newFavoritePosts;
    try {
      newFavoritePosts = await _favoritePostsRemoteDataSource
          .getFavoritePosts(cachedPostsCount);
    } on ExceptionBase catch (exception) {
      return Left(
        Tuple2(
          exception,
          await _favoritePostsLocalDataSource.getLocalFavoritePosts(),
        ),
      );
    }
    
    await _favoritePostsLocalDataSource
        .appendLocalFavoritePosts(newFavoritePosts);

    return right(await _favoritePostsLocalDataSource.getLocalFavoritePosts());
  }
}
