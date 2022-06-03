part of 'resume_data.dart';

@freezed
class ResumeSection with _$ResumeSection {
  factory ResumeSection({
    required String label,
    required List<SectionSubdivision> sectionSubdivisions,
  }) = _ResumeSection;
}
