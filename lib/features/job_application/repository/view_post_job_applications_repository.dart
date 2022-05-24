import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/job_application/data/job_application_local_data_source/view_post_job_applications_local_data_source.dart';
import 'package:doors/features/job_application/data/job_application_remote_data_source/view_post_job_applications_remote_data_source.dart';
import 'dart:collection';

class ViewPostJobApplicationsRepository {
  final ViewPostJobApplicationsLocalDataSource
      _viewPostJobApplicationsLocalDataSource;

  final ViewPostJobApplicationsRemoteDataSource
      _viewPostJobApplicationsRemoteDataSource;

  ViewPostJobApplicationsRepository(
    this._viewPostJobApplicationsLocalDataSource,
    this._viewPostJobApplicationsRemoteDataSource,
  );

  /// Get a list of applied applications on job post.
  ///
  /// [jobPost]: the job post to get its job applications.
  ///
  /// Returns either [UnmodifiableListView] holding the [JobApplication]
  ///
  /// OR [Tuple2<ExceptionBase, UnmodifiableListView]:
  /// * head: (the error)
  ///   * [ExceptionBase]:
  ///     * [ServerException]:  In case of connection error or parse error.
  ///   * [UserException]:
  ///     * [AnonymousException]: if the current user is anonymous user
  ///     * [ForbiddenOperation]: if the current account is not company account, or
  ///  the user is trying to view other user post job applications.
  ///
  /// * tail: (cached data, empty in case of [UserException])
  ///   * holding the local cached post job applications.
  Future<EitherDataOrDataWithError<ExceptionBase, JobApplication>>
      getJobApplications({
    required JobPost jobPost,
    bool fullRefresh = false,
  }) async {
    if (fullRefresh) {
      await _viewPostJobApplicationsLocalDataSource.clearCache();
    }
    final cachedPostsCount = await _viewPostJobApplicationsLocalDataSource
        .getCountOfCachedPostJobApplications();

    UnmodifiableListView<JobApplication> newFavoritePosts;
    try {
      newFavoritePosts =
          await _viewPostJobApplicationsRemoteDataSource.getJobApplications(
        amountToSkip: cachedPostsCount,
        jobPost: jobPost,
      );
    } on ServerException catch (exception) {
      return Left(
        Tuple2(
          exception,
          await _viewPostJobApplicationsLocalDataSource
              .getLocalPostJobApplications(),
        ),
      );
    } on UserException catch (exception) {
      return Left(
        Tuple2(
          exception,
          UnmodifiableListView(List.empty()),
        ),
      );
    }

    await _viewPostJobApplicationsLocalDataSource
        .appendLocalPostJobApplications(newFavoritePosts);

    return right(await _viewPostJobApplicationsLocalDataSource
        .getLocalPostJobApplications());
  }
}
