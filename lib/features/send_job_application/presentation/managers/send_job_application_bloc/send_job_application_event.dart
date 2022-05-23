part of 'send_job_application_bloc.dart';

@freezed
class SendJobApplicationEvent with _$SendJobApplicationEvent {
  const factory SendJobApplicationEvent.jobApplicationSended(
    JobApplication jobApplication,
  ) = SendJobApplicationJobApplicationSended;
}
