part of 'resume_sections_manager_bloc.dart';

@freezed
class ResumeSectionsManagerEvent with _$ResumeSectionsManagerEvent {
  const factory ResumeSectionsManagerEvent.sectionAdded() = _SectionAdded;

  const factory ResumeSectionsManagerEvent.sectionRemoved(int sectionIndex) =
      _SectionRemoved;

  const factory ResumeSectionsManagerEvent.sectionMovedUp(int sectionIndex) =
      _SectionMovedUp;

  const factory ResumeSectionsManagerEvent.sectionMovedDown(int sectionIndex) =
      _SectionMovedDown;

  const factory ResumeSectionsManagerEvent.sectionLabelUpdated(
    String? newLabel,
    int sectionIndex,
  ) = _SectionLabelUpdated;
}
