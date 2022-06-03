part of 'resume_subdivisions_manager_bloc.dart';

@freezed
class ResumeSubdivisionsManagerState with _$ResumeSubdivisionsManagerState {
  const factory ResumeSubdivisionsManagerState.initial() = _Initial;

  const factory ResumeSubdivisionsManagerState.changeSuccess(
   UnmodifiableListView <SectionSubdivision> newSubdivisions,
    int sectionIndex,
  ) = _ChangeSuccess;

  const factory ResumeSubdivisionsManagerState.startDragging(
    SectionSubdivision draggedSectionSubdivision,
    int sectionIndex,
    int subdivisionIndex,
  ) = _StartDragging;
  const factory ResumeSubdivisionsManagerState.dragUpdate(
    double normalizedDy,
  ) = _DragUpdate;

  const factory ResumeSubdivisionsManagerState.dragEnd(
    SectionSubdivision draggedSectionSubdivision,
    int sectionIndex,
    int subdivisionIndex,
    bool wasAccepted,
  ) = _DragEnd;
}
