part of 'resume_subdivisions_manager_bloc.dart';

@freezed
class ResumeSubdivisionsManagerEvent with _$ResumeSubdivisionsManagerEvent {
  const factory ResumeSubdivisionsManagerEvent.subdivisionInserted(
    SectionSubdivision sectionSubdivision,
    int sectionIndex,
    int subdivisionInsertionIndex,
  ) = _SubdivisionInserted;

  const factory ResumeSubdivisionsManagerEvent.subdivisionAdded(
    int sectionIndex,
  ) = _SubdivisionAdded;

  const factory ResumeSubdivisionsManagerEvent.subdivisionRemoved(
    int sectionIndex,
    int subdivisionIndex,
  ) = _SubdivisionRemoved;

  const factory ResumeSubdivisionsManagerEvent.subdivisionDragStarted(
    SectionSubdivision draggedSectionSubdivision,
    int sectionIndex,
    int subdivisionIndex,
  ) = _SubdivisionDragStarted;

  const factory ResumeSubdivisionsManagerEvent.subdivisionDragUpdated(
    double normalizedDy,
  ) = _SubdivisionDragUpdated;

  const factory ResumeSubdivisionsManagerEvent.subdivisionDragEnded(
    SectionSubdivision draggedSectionSubdivision,
    int sectionIndex,
    int subdivisionIndex,
    bool wasAccepted,
  ) = _SubdivisionDragEnded;

  const factory ResumeSubdivisionsManagerEvent.subdivisionLabelUpdated(
    String? newLabel,
    int sectionIndex,
    int subdivisionIndex,
  ) = _SubdivisionLabelUpdated;

  const factory ResumeSubdivisionsManagerEvent.subdivisionParagraphUpdated(
    String? newParagraph,
    int sectionIndex,
    int subdivisionIndex,
  ) = _SubdivisionParagraphUpdated;

  const factory ResumeSubdivisionsManagerEvent.resumeSectionsChanged(
  
  ) = _ResumeSectionsChanged;
}
