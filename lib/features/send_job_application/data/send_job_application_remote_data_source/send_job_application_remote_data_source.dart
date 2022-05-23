import 'dart:async';

import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/core/models/user.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class SendJobApplicationRemoteDataSource {
  /// Save [jobApplication] to the server.
  ///
  /// NOTE: cloud code (afterSave) will run to link the [jobApplication] to its jobPost.
  ///
  /// Returns [JobApplication] if the saved operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [UserException]:
  ///   * [AnonymousException] if the user is Anonymous user
  ///   * [ParseFileNotSavedToTheServer] if the cv file not saved to the parse server
  Future<JobApplication> sendJobApplication(JobApplication jobApplication);
}

class SendJobApplicationRemoteDataSourceImpl
    extends SendJobApplicationRemoteDataSource {
  @override
  Future<JobApplication> sendJobApplication(
      JobApplication jobApplication) async {
    assert(jobApplication.objectId == null);

    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not send job applications');
    }

    if (!jobApplication.cvFile.saved) {
      throw const ParseFileNotSavedToTheServer(
        'parse file not saved to the server',
      );
    }

    final ParseResponse saveJobApplicationResponse;
    try {
      saveJobApplicationResponse = await jobApplication.create();
    } catch (e) {
      throw NoConnectionException(
          'can not send job application' + e.toString());
    }

    if (!saveJobApplicationResponse.success ||
        saveJobApplicationResponse.results == null ||
        saveJobApplicationResponse.count == 0) {
      throw ParseException.extractParseException(
        saveJobApplicationResponse.error,
      );
    }

    return saveJobApplicationResponse.results!.first;
  }
}
