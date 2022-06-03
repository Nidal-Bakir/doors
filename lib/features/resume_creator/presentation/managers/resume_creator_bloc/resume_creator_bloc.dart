import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/features/resume_creator/repository/resume_creator_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_creator_event.dart';
part 'resume_creator_state.dart';
part 'resume_creator_bloc.freezed.dart';

class ResumeCreatorBloc extends Bloc<ResumeCreatorEvent, ResumeCreatorState> {
  final ResumeCreatorRepository _resumeCreatorRepository;
  ResumeCreatorBloc(this._resumeCreatorRepository)
      : super(const ResumeCreatorInitial()) {
    on<ResumeCreatorEvent>(
      (event, emit) async {
        await event.map(
          created: (event) async => await _onResumeCreated(event, emit),
        );
      },
    );
  }

  Future<void> _onResumeCreated(
      ResumeCreatorCreated event, Emitter<ResumeCreatorState> emit) async {
    emit(const ResumeCreatorCreationInProgress());

    final createResumePdfFileResult =
        await _resumeCreatorRepository.createPdfResume(event.argument);
        
    createResumePdfFileResult.fold(
      (error) => emit(ResumeCreatorCreationFailure(error)),
      (resumeFile) => emit(ResumeCreatorCreationSuccess(resumeFile)),
    );
  }
}
