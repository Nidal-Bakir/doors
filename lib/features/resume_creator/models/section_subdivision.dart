part of 'resume_data.dart';

@freezed
class SectionSubdivision with _$SectionSubdivision {
  factory SectionSubdivision({
    String? headLine,
    String? label,
    String? paragraph,
    ResumeSection? resumeSection,
  }) = _SectionSubdivision;
}
