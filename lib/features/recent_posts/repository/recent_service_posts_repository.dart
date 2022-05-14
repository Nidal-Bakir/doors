import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_service_posts_local_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_remote_data_source/recent_service_posts_remote_data_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class RecentServicePostsRepository {
  final RecentServicePostsLocalDataSource _recentServicePostsLocalDataSource;
  final RecentServicePostsRemoteDataSource _recentServicePostsRemoteDataSource;

  RecentServicePostsRepository(
    this._recentServicePostsLocalDataSource,
    this._recentServicePostsRemoteDataSource,
  );

  Future<EitherDataOrDataWithError<ServerException, ServicePost>>
      getRecentNeededServicePosts({
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _recentServicePostsLocalDataSource
          .clearRecentNeededServicePostsCache();
    }
    final cachedPostsCount = await _recentServicePostsLocalDataSource
        .getCountOfCachedRecentNeededServicePosts();

    UnmodifiableListView<ServicePost> newRecentPosts;
    try {
      newRecentPosts = await _recentServicePostsRemoteDataSource
          .getRemoteRecentNeededServicePosts(cachedPostsCount);
    } on ServerException catch (serverError) {
      return Left(
        Tuple2(
          serverError,
          await _recentServicePostsLocalDataSource
              .getLocalRecentNeededServicePosts(),
        ),
      );
    }

    await _recentServicePostsLocalDataSource
        .appendLocalRecentNeededServicePosts(newRecentPosts);

    return Right(await _recentServicePostsLocalDataSource
        .getLocalRecentNeededServicePosts());
  }

  Future<EitherDataOrDataWithError<ServerException, ServicePost>>
      getRecentOfferedServicePosts({bool fullRefresh = false}) async {
    if (fullRefresh) {
      await _recentServicePostsLocalDataSource
          .clearRecentOfferedServicePostsCache();
    }
    final cachedServicePostsCount = await _recentServicePostsLocalDataSource
        .getCountOfCachedRecentOfferedServicePosts();

    UnmodifiableListView<ServicePost> newRecentServicePosts;
    try {
      newRecentServicePosts = await _recentServicePostsRemoteDataSource
          .getRemoteRecentOfferedServicePosts(cachedServicePostsCount);
    } on ServerException catch (serverError) {
      return Left(
        Tuple2(
          serverError,
          await _recentServicePostsLocalDataSource
              .getLocalRecentOfferedServicePosts(),
        ),
      );
    }

    await _recentServicePostsLocalDataSource
        .appendLocalRecentOfferedServicePosts(newRecentServicePosts);

    return Right(await _recentServicePostsLocalDataSource
        .getLocalRecentOfferedServicePosts());
  }
}
