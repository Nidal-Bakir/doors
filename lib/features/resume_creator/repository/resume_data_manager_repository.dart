import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class ResumeDataManagerRepository {
  final List<ResumeSection> _resumeSections = [];

  void clearAllResumeSections() => _resumeSections.clear();

  void setResumeSections(List<ResumeSection> resumeSections) {
    _resumeSections.clear();
    _resumeSections.addAll(resumeSections);
  }

  UnmodifiableListView<ResumeSection> getAllResumeSections() {
    return UnmodifiableListView(_resumeSections.toList());
  }

  UnmodifiableListView<SectionSubdivision> getSectionSubdivisions(
    int sectionIndex,
  ) {
    return UnmodifiableListView(
      _resumeSections[sectionIndex].sectionSubdivisions.toList(),
    );
  }

  void moveSectionUp(int sectionIndex) {
    if (sectionIndex == 0) {
      return;
    }
    _resumeSections.swap(sectionIndex, sectionIndex - 1);
  }

  void moveSectionDown(int sectionIndex) {
    if (sectionIndex == _resumeSections.length - 1) {
      return;
    }
    _resumeSections.swap(sectionIndex, sectionIndex + 1);
  }

  void removeSection(int sectionIndex) {
    _resumeSections.removeAt(sectionIndex);
  }

  void addSection() {
    _resumeSections.add(
      ResumeSection(
        label: '',
        sectionSubdivisions: [
          SectionSubdivision(),
        ],
      ),
    );
  }

  void insertSubdivision(
    SectionSubdivision sectionSubdivision,
    int sectionIndex,
    int subdivisionInsertionIndex,
  ) {
    if (subdivisionInsertionIndex >
        _resumeSections[sectionIndex].sectionSubdivisions.length - 1) {
      _resumeSections[sectionIndex].sectionSubdivisions.add(sectionSubdivision);
      return;
    }
    _resumeSections[sectionIndex].sectionSubdivisions.insert(
          subdivisionInsertionIndex,
          sectionSubdivision,
        );
        
  }

  void addSubdivision(int sectionIndex) {
    _resumeSections[sectionIndex].sectionSubdivisions.add(
          SectionSubdivision(),
        );
  }

  void removeSubdivision(
    int sectionIndex,
    int subdivisionIndex,
  ) {
    _resumeSections[sectionIndex]
        .sectionSubdivisions
        .removeAt(subdivisionIndex);
  }

  void updateSectionLabel(
    String? label,
    int sectionIndex,
  ) {
    _resumeSections[sectionIndex] = _resumeSections[sectionIndex].copyWith(
      label: label ?? '',
    );
  }

  void updateSubdivisionLabel(
    String? label,
    int sectionIndex,
    int subdivisionIndex,
  ) {
    _resumeSections[sectionIndex].sectionSubdivisions[subdivisionIndex] =
        _resumeSections[sectionIndex]
            .sectionSubdivisions[subdivisionIndex]
            .copyWith(
              label: label,
            );
  }

  void updateSubdivisionParagraph(
    String? paragraph,
    int sectionIndex,
    int subdivisionIndex,
  ) {
    _resumeSections[sectionIndex].sectionSubdivisions[subdivisionIndex] =
        _resumeSections[sectionIndex]
            .sectionSubdivisions[subdivisionIndex]
            .copyWith(
              paragraph: paragraph,
            );
  }
}
