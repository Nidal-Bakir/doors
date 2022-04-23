import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/recent_posts/data/recent_post_remote_data_source/recent_posts_remote_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_posts_local_data_source.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RecentPostsRepository {
  final RecentPostsLocalDataSource _recentPostsLocalDataSource;
  final RecentPostsRemoteDataSource _recentPostsRemoteDataSource;

  RecentPostsRepository(
      this._recentPostsLocalDataSource, this._recentPostsRemoteDataSource);

  Future<EitherDataOrDataWithError<ServerException, Post>>
      getRecentNeededPosts({
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _recentPostsLocalDataSource.clearRecentNeededPostsCache();
    }
    final cachedPostsCount =
        await _recentPostsLocalDataSource.getCountOfCachedRecentNeededPosts();

    UnmodifiableListView<Post> newRecentPosts;
    try {
      newRecentPosts = await _recentPostsRemoteDataSource
          .getRemoteRecentNeededPosts(cachedPostsCount);
    } on ServerException catch (serverError) {
      return Left(
        Tuple2(
          serverError,
          await _recentPostsLocalDataSource.getLocalRecentNeededPosts(),
        ),
      );
    }

    await _recentPostsLocalDataSource
        .appendLocalRecentNeededPosts(newRecentPosts);

    return Right(await _recentPostsLocalDataSource.getLocalRecentNeededPosts());
  }

  Future<EitherDataOrDataWithError<ServerException, Post>>
      getRecentOfferedPosts({bool fullRefresh = false}) async {
    if (fullRefresh) {
      await _recentPostsLocalDataSource.clearRecentOfferedPostsCache();
    }
    final cachedPostsCount =
        await _recentPostsLocalDataSource.getCountOfCachedRecentOfferedPosts();

    UnmodifiableListView<Post> newRecentPosts;
    try {
      newRecentPosts = await _recentPostsRemoteDataSource
          .getRemoteRecentOfferedPosts(cachedPostsCount);
    } on ServerException catch (serverError) {
      return Left(
        Tuple2(
          serverError,
          await _recentPostsLocalDataSource.getLocalRecentOfferedPosts(),
        ),
      );
    }

    await _recentPostsLocalDataSource
        .appendLocalRecentOfferedPosts(newRecentPosts);

    return Right(
        await _recentPostsLocalDataSource.getLocalRecentOfferedPosts());
  }
}
