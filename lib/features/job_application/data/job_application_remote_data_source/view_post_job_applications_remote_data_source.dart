import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/user.dart';
import 'dart:collection';

import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ViewPostJobApplicationsRemoteDataSource {
  /// Get a list of applied applications on job post.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current
  /// loaded job applications
  ///
  /// [jobPost]: the job post to get its job applications.
  ///
  /// Returns a UnmodifiableList of [JobApplication]
  ///
  /// Throws [ExceptionBase]:
  /// * [ServerException]:  In case of connection error or parse error.
  /// * [UserException]:
  ///   * [AnonymousException]: if the current user is anonymous user
  ///   * [ForbiddenOperation]: if the current account is not company account, or
  ///  the user is trying to view other user post job applications.
  Future<UnmodifiableListView<JobApplication>> getJobApplications({
    required JobPost jobPost,
    required int amountToSkip,
  });
}

class ViewPostJobApplicationsRemoteDataSourceImpl
    extends ViewPostJobApplicationsRemoteDataSource {
  @override
  Future<UnmodifiableListView<JobApplication>> getJobApplications({
    required JobPost jobPost,
    required int amountToSkip,
  }) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not view job applications');
    }

    if (!_currentUser.isCompanyAccount) {
      throw const ForbiddenOperation(
        'any account other than the Company account can not view job applications',
      );
    }

    if (_currentUser.userId != jobPost.author.userId) {
      throw const ForbiddenOperation(
        'this company account is not the author of this job post',
      );
    }

    final userPostsQuery = QueryBuilder.name(JobApplication.keyClassName)
      ..whereEqualTo(JobApplication.keyJob, jobPost.toPointer())
      ..orderByDescending(JobApplication.keyApplicationCreationDate)
      ..includeObject([JobApplication.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse listOfJobApplications;
    try {
      listOfJobApplications = await userPostsQuery.query();
    } catch (e) {
      throw NoConnectionException(
        'can not get a list job applications' '\n Error: ' + e.toString(),
      );
    }
    if (listOfJobApplications.success &&
        listOfJobApplications.error == null &&
        listOfJobApplications.result != null) {
      return UnmodifiableListView(
        List<JobApplication>.from(
          listOfJobApplications.results!,
        ),
      );
    } else {
      final error =
          ParseException.extractParseException(listOfJobApplications.error);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
