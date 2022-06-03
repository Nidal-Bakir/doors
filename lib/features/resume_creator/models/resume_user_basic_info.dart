part of 'resume_data.dart';
@freezed
class ResumeUserBasicInfo with _$ResumeUserBasicInfo {
  factory ResumeUserBasicInfo({
    required String name,
    String? email,
    String? phoneNumber,
    String? currentResidence,
    String? placeOfBirth,
    String? gender,
    String? nationality,
    String? dateOfBirth,
    File? profileImage,
  }) = _ResumeUserBasicInfo;
}
