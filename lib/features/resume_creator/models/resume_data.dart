import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf/widgets.dart' as pw;

part 'resume_section.dart';
part 'section_subdivision.dart';
part 'resume_user_basic_info.dart';

part 'resume_data.freezed.dart';

@freezed
class ResumeData with _$ResumeData {
  factory ResumeData({
    required ResumeUserBasicInfo userBasicInfo,
    required List<ResumeSection> resumeSections,
    Map<String, File?>? files,
    String? resumeHeadLineLabel,
    @Default(pw.TextDirection.ltr) pw.TextDirection? textDirection,
  }) = _ResumeData;
}
