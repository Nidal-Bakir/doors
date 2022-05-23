import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/models/job_application.dart';
import 'package:doors/features/send_job_application/repository/send_job_application_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_job_application_event.dart';
part 'send_job_application_state.dart';
part 'send_job_application_bloc.freezed.dart';

class SendJobApplicationBloc
    extends Bloc<SendJobApplicationEvent, SendJobApplicationState> {
  final SendJobApplicationRepository _sendJobApplicationRepository;
  SendJobApplicationBloc(this._sendJobApplicationRepository)
      : super(const SendJobApplicationInitial()) {
    on<SendJobApplicationEvent>(
      (event, emit) async {
        await event.map(
          jobApplicationSended: (jobApplicationSended) async =>
              await _onJobApplicationSended(jobApplicationSended, emit),
        );
      },
    );
  }

  Future<void> _onJobApplicationSended(
      SendJobApplicationJobApplicationSended jobApplicationSended,
      Emitter<SendJobApplicationState> emit) async {
    emit(const SendJobApplicationInProgress());

    final sendJobApplicationResult = await _sendJobApplicationRepository
        .sendJobApplication(jobApplicationSended.jobApplication);

    sendJobApplicationResult.fold(
      (error) => emit(SendJobApplicationSendFailure(error)),
      (jobApplication) => emit(SendJobApplicationSendSuccess(jobApplication)),
    );
  }
}
