part of 'resume_creator_bloc.dart';

@freezed
class ResumeCreatorState with _$ResumeCreatorState {
  const factory ResumeCreatorState.initial() = ResumeCreatorInitial;

  const factory ResumeCreatorState.creationInProgress() =
      ResumeCreatorCreationInProgress;

  const factory ResumeCreatorState.creationSuccess(File createdResumePdfFile) =
      ResumeCreatorCreationSuccess;

  const factory ResumeCreatorState.creationFailure(UserException error) =
      ResumeCreatorCreationFailure;
}
