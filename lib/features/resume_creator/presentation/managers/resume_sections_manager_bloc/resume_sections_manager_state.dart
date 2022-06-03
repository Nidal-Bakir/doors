part of 'resume_sections_manager_bloc.dart';

@freezed
class ResumeSectionsManagerState with _$ResumeSectionsManagerState {
  const factory ResumeSectionsManagerState.initial() = _Initial;

  const factory ResumeSectionsManagerState.changeSuccess(
    UnmodifiableListView<ResumeSection> newResumeSections,
  ) = _ChangeSuccess;
}
