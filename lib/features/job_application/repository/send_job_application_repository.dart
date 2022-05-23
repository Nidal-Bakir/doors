import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/features/job_application/data/send_job_application_remote_data_source/send_job_application_remote_data_source.dart';

class SendJobApplicationRepository {
  final SendJobApplicationRemoteDataSource
      _sendJobApplicationRemoteDataSource;

  SendJobApplicationRepository(this._sendJobApplicationRemoteDataSource);

  /// Save [jobApplication] to the server.
  ///
  /// Returns Either:
  /// * [JobApplication] if the saved operation was successful.
  ///
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [UserException]:
  ///   * [AnonymousException] if the user is Anonymous user
  ///   * [ParseFileNotSavedToTheServer] if the cv file not saved to the parse server
  Future<Either<ExceptionBase, JobApplication>> sendJobApplication(
      JobApplication jobApplication) async {
    try {
      return Right(
        await _sendJobApplicationRemoteDataSource
            .sendJobApplication(jobApplication),
      );
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }
}
