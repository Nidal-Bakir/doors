part of 'send_job_application_bloc.dart';

@freezed
class SendJobApplicationState with _$SendJobApplicationState {
  const factory SendJobApplicationState.initial() = SendJobApplicationInitial;
  const factory SendJobApplicationState.inProgress() =
      SendJobApplicationInProgress;
  const factory SendJobApplicationState.sendSuccess(
      JobApplication jobApplication) = SendJobApplicationSendSuccess;
  const factory SendJobApplicationState.sendFailure(ExceptionBase error) =
      SendJobApplicationSendFailure;
}
