import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_job_posts_local_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_remote_data_source/recent_job_posts_remote_data_source.dart';

class RecentJobPostsRepository {
  final RecentJobPostsLocalDataSource _recentJobPostsLocalDataSource;
  final RecentJobPostsRemoteDataSource _recentJobPostsRemoteDataSource;

  RecentJobPostsRepository(
      this._recentJobPostsLocalDataSource, this._recentJobPostsRemoteDataSource);

  Future<EitherDataOrDataWithError<ServerException, JobPost>>
      getRecentJobPosts({
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _recentJobPostsLocalDataSource.clearCache();
    }
    final cachedJobPostsCount =
        await _recentJobPostsLocalDataSource.getCountOfCachedJobPosts();

    UnmodifiableListView<JobPost> newRecentJobPosts;
    try {
      newRecentJobPosts = await _recentJobPostsRemoteDataSource
          .getRecentJobPosts(cachedJobPostsCount);
    } on ServerException catch (serverError) {
      return Left(
        Tuple2(
          serverError,
          await _recentJobPostsLocalDataSource.getLocalRecentJobPosts(),
        ),
      );
    }

    await _recentJobPostsLocalDataSource
        .appendLocalRecentJobPosts(newRecentJobPosts);

    return Right(await _recentJobPostsLocalDataSource.getLocalRecentJobPosts());
  }

  
}
