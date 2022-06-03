// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resume_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumeDataTearOff {
  const _$ResumeDataTearOff();

  _ResumeData call(
      {required ResumeUserBasicInfo userBasicInfo,
      required List<ResumeSection> resumeSections,
      Map<String, File?>? files,
      String? resumeHeadLineLabel,
      pw.TextDirection? textDirection = pw.TextDirection.ltr}) {
    return _ResumeData(
      userBasicInfo: userBasicInfo,
      resumeSections: resumeSections,
      files: files,
      resumeHeadLineLabel: resumeHeadLineLabel,
      textDirection: textDirection,
    );
  }
}

/// @nodoc
const $ResumeData = _$ResumeDataTearOff();

/// @nodoc
mixin _$ResumeData {
  ResumeUserBasicInfo get userBasicInfo => throw _privateConstructorUsedError;
  List<ResumeSection> get resumeSections => throw _privateConstructorUsedError;
  Map<String, File?>? get files => throw _privateConstructorUsedError;
  String? get resumeHeadLineLabel => throw _privateConstructorUsedError;
  pw.TextDirection? get textDirection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeDataCopyWith<ResumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeDataCopyWith<$Res> {
  factory $ResumeDataCopyWith(
          ResumeData value, $Res Function(ResumeData) then) =
      _$ResumeDataCopyWithImpl<$Res>;
  $Res call(
      {ResumeUserBasicInfo userBasicInfo,
      List<ResumeSection> resumeSections,
      Map<String, File?>? files,
      String? resumeHeadLineLabel,
      pw.TextDirection? textDirection});

  $ResumeUserBasicInfoCopyWith<$Res> get userBasicInfo;
}

/// @nodoc
class _$ResumeDataCopyWithImpl<$Res> implements $ResumeDataCopyWith<$Res> {
  _$ResumeDataCopyWithImpl(this._value, this._then);

  final ResumeData _value;
  // ignore: unused_field
  final $Res Function(ResumeData) _then;

  @override
  $Res call({
    Object? userBasicInfo = freezed,
    Object? resumeSections = freezed,
    Object? files = freezed,
    Object? resumeHeadLineLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_value.copyWith(
      userBasicInfo: userBasicInfo == freezed
          ? _value.userBasicInfo
          : userBasicInfo // ignore: cast_nullable_to_non_nullable
              as ResumeUserBasicInfo,
      resumeSections: resumeSections == freezed
          ? _value.resumeSections
          : resumeSections // ignore: cast_nullable_to_non_nullable
              as List<ResumeSection>,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, File?>?,
      resumeHeadLineLabel: resumeHeadLineLabel == freezed
          ? _value.resumeHeadLineLabel
          : resumeHeadLineLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: textDirection == freezed
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as pw.TextDirection?,
    ));
  }

  @override
  $ResumeUserBasicInfoCopyWith<$Res> get userBasicInfo {
    return $ResumeUserBasicInfoCopyWith<$Res>(_value.userBasicInfo, (value) {
      return _then(_value.copyWith(userBasicInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ResumeDataCopyWith<$Res> implements $ResumeDataCopyWith<$Res> {
  factory _$ResumeDataCopyWith(
          _ResumeData value, $Res Function(_ResumeData) then) =
      __$ResumeDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {ResumeUserBasicInfo userBasicInfo,
      List<ResumeSection> resumeSections,
      Map<String, File?>? files,
      String? resumeHeadLineLabel,
      pw.TextDirection? textDirection});

  @override
  $ResumeUserBasicInfoCopyWith<$Res> get userBasicInfo;
}

/// @nodoc
class __$ResumeDataCopyWithImpl<$Res> extends _$ResumeDataCopyWithImpl<$Res>
    implements _$ResumeDataCopyWith<$Res> {
  __$ResumeDataCopyWithImpl(
      _ResumeData _value, $Res Function(_ResumeData) _then)
      : super(_value, (v) => _then(v as _ResumeData));

  @override
  _ResumeData get _value => super._value as _ResumeData;

  @override
  $Res call({
    Object? userBasicInfo = freezed,
    Object? resumeSections = freezed,
    Object? files = freezed,
    Object? resumeHeadLineLabel = freezed,
    Object? textDirection = freezed,
  }) {
    return _then(_ResumeData(
      userBasicInfo: userBasicInfo == freezed
          ? _value.userBasicInfo
          : userBasicInfo // ignore: cast_nullable_to_non_nullable
              as ResumeUserBasicInfo,
      resumeSections: resumeSections == freezed
          ? _value.resumeSections
          : resumeSections // ignore: cast_nullable_to_non_nullable
              as List<ResumeSection>,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as Map<String, File?>?,
      resumeHeadLineLabel: resumeHeadLineLabel == freezed
          ? _value.resumeHeadLineLabel
          : resumeHeadLineLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      textDirection: textDirection == freezed
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as pw.TextDirection?,
    ));
  }
}

/// @nodoc

class _$_ResumeData implements _ResumeData {
  _$_ResumeData(
      {required this.userBasicInfo,
      required this.resumeSections,
      this.files,
      this.resumeHeadLineLabel,
      this.textDirection = pw.TextDirection.ltr});

  @override
  final ResumeUserBasicInfo userBasicInfo;
  @override
  final List<ResumeSection> resumeSections;
  @override
  final Map<String, File?>? files;
  @override
  final String? resumeHeadLineLabel;
  @JsonKey()
  @override
  final pw.TextDirection? textDirection;

  @override
  String toString() {
    return 'ResumeData(userBasicInfo: $userBasicInfo, resumeSections: $resumeSections, files: $files, resumeHeadLineLabel: $resumeHeadLineLabel, textDirection: $textDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResumeData &&
            const DeepCollectionEquality()
                .equals(other.userBasicInfo, userBasicInfo) &&
            const DeepCollectionEquality()
                .equals(other.resumeSections, resumeSections) &&
            const DeepCollectionEquality().equals(other.files, files) &&
            const DeepCollectionEquality()
                .equals(other.resumeHeadLineLabel, resumeHeadLineLabel) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userBasicInfo),
      const DeepCollectionEquality().hash(resumeSections),
      const DeepCollectionEquality().hash(files),
      const DeepCollectionEquality().hash(resumeHeadLineLabel),
      const DeepCollectionEquality().hash(textDirection));

  @JsonKey(ignore: true)
  @override
  _$ResumeDataCopyWith<_ResumeData> get copyWith =>
      __$ResumeDataCopyWithImpl<_ResumeData>(this, _$identity);
}

abstract class _ResumeData implements ResumeData {
  factory _ResumeData(
      {required ResumeUserBasicInfo userBasicInfo,
      required List<ResumeSection> resumeSections,
      Map<String, File?>? files,
      String? resumeHeadLineLabel,
      pw.TextDirection? textDirection}) = _$_ResumeData;

  @override
  ResumeUserBasicInfo get userBasicInfo;
  @override
  List<ResumeSection> get resumeSections;
  @override
  Map<String, File?>? get files;
  @override
  String? get resumeHeadLineLabel;
  @override
  pw.TextDirection? get textDirection;
  @override
  @JsonKey(ignore: true)
  _$ResumeDataCopyWith<_ResumeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumeSectionTearOff {
  const _$ResumeSectionTearOff();

  _ResumeSection call(
      {required String label,
      required List<SectionSubdivision> sectionSubdivisions}) {
    return _ResumeSection(
      label: label,
      sectionSubdivisions: sectionSubdivisions,
    );
  }
}

/// @nodoc
const $ResumeSection = _$ResumeSectionTearOff();

/// @nodoc
mixin _$ResumeSection {
  String get label => throw _privateConstructorUsedError;
  List<SectionSubdivision> get sectionSubdivisions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeSectionCopyWith<ResumeSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSectionCopyWith<$Res> {
  factory $ResumeSectionCopyWith(
          ResumeSection value, $Res Function(ResumeSection) then) =
      _$ResumeSectionCopyWithImpl<$Res>;
  $Res call({String label, List<SectionSubdivision> sectionSubdivisions});
}

/// @nodoc
class _$ResumeSectionCopyWithImpl<$Res>
    implements $ResumeSectionCopyWith<$Res> {
  _$ResumeSectionCopyWithImpl(this._value, this._then);

  final ResumeSection _value;
  // ignore: unused_field
  final $Res Function(ResumeSection) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? sectionSubdivisions = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sectionSubdivisions: sectionSubdivisions == freezed
          ? _value.sectionSubdivisions
          : sectionSubdivisions // ignore: cast_nullable_to_non_nullable
              as List<SectionSubdivision>,
    ));
  }
}

/// @nodoc
abstract class _$ResumeSectionCopyWith<$Res>
    implements $ResumeSectionCopyWith<$Res> {
  factory _$ResumeSectionCopyWith(
          _ResumeSection value, $Res Function(_ResumeSection) then) =
      __$ResumeSectionCopyWithImpl<$Res>;
  @override
  $Res call({String label, List<SectionSubdivision> sectionSubdivisions});
}

/// @nodoc
class __$ResumeSectionCopyWithImpl<$Res>
    extends _$ResumeSectionCopyWithImpl<$Res>
    implements _$ResumeSectionCopyWith<$Res> {
  __$ResumeSectionCopyWithImpl(
      _ResumeSection _value, $Res Function(_ResumeSection) _then)
      : super(_value, (v) => _then(v as _ResumeSection));

  @override
  _ResumeSection get _value => super._value as _ResumeSection;

  @override
  $Res call({
    Object? label = freezed,
    Object? sectionSubdivisions = freezed,
  }) {
    return _then(_ResumeSection(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sectionSubdivisions: sectionSubdivisions == freezed
          ? _value.sectionSubdivisions
          : sectionSubdivisions // ignore: cast_nullable_to_non_nullable
              as List<SectionSubdivision>,
    ));
  }
}

/// @nodoc

class _$_ResumeSection implements _ResumeSection {
  _$_ResumeSection({required this.label, required this.sectionSubdivisions});

  @override
  final String label;
  @override
  final List<SectionSubdivision> sectionSubdivisions;

  @override
  String toString() {
    return 'ResumeSection(label: $label, sectionSubdivisions: $sectionSubdivisions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResumeSection &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality()
                .equals(other.sectionSubdivisions, sectionSubdivisions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(sectionSubdivisions));

  @JsonKey(ignore: true)
  @override
  _$ResumeSectionCopyWith<_ResumeSection> get copyWith =>
      __$ResumeSectionCopyWithImpl<_ResumeSection>(this, _$identity);
}

abstract class _ResumeSection implements ResumeSection {
  factory _ResumeSection(
          {required String label,
          required List<SectionSubdivision> sectionSubdivisions}) =
      _$_ResumeSection;

  @override
  String get label;
  @override
  List<SectionSubdivision> get sectionSubdivisions;
  @override
  @JsonKey(ignore: true)
  _$ResumeSectionCopyWith<_ResumeSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SectionSubdivisionTearOff {
  const _$SectionSubdivisionTearOff();

  _SectionSubdivision call(
      {String? headLine,
      String? label,
      String? paragraph,
      ResumeSection? resumeSection}) {
    return _SectionSubdivision(
      headLine: headLine,
      label: label,
      paragraph: paragraph,
      resumeSection: resumeSection,
    );
  }
}

/// @nodoc
const $SectionSubdivision = _$SectionSubdivisionTearOff();

/// @nodoc
mixin _$SectionSubdivision {
  String? get headLine => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  String? get paragraph => throw _privateConstructorUsedError;
  ResumeSection? get resumeSection => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionSubdivisionCopyWith<SectionSubdivision> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionSubdivisionCopyWith<$Res> {
  factory $SectionSubdivisionCopyWith(
          SectionSubdivision value, $Res Function(SectionSubdivision) then) =
      _$SectionSubdivisionCopyWithImpl<$Res>;
  $Res call(
      {String? headLine,
      String? label,
      String? paragraph,
      ResumeSection? resumeSection});

  $ResumeSectionCopyWith<$Res>? get resumeSection;
}

/// @nodoc
class _$SectionSubdivisionCopyWithImpl<$Res>
    implements $SectionSubdivisionCopyWith<$Res> {
  _$SectionSubdivisionCopyWithImpl(this._value, this._then);

  final SectionSubdivision _value;
  // ignore: unused_field
  final $Res Function(SectionSubdivision) _then;

  @override
  $Res call({
    Object? headLine = freezed,
    Object? label = freezed,
    Object? paragraph = freezed,
    Object? resumeSection = freezed,
  }) {
    return _then(_value.copyWith(
      headLine: headLine == freezed
          ? _value.headLine
          : headLine // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      paragraph: paragraph == freezed
          ? _value.paragraph
          : paragraph // ignore: cast_nullable_to_non_nullable
              as String?,
      resumeSection: resumeSection == freezed
          ? _value.resumeSection
          : resumeSection // ignore: cast_nullable_to_non_nullable
              as ResumeSection?,
    ));
  }

  @override
  $ResumeSectionCopyWith<$Res>? get resumeSection {
    if (_value.resumeSection == null) {
      return null;
    }

    return $ResumeSectionCopyWith<$Res>(_value.resumeSection!, (value) {
      return _then(_value.copyWith(resumeSection: value));
    });
  }
}

/// @nodoc
abstract class _$SectionSubdivisionCopyWith<$Res>
    implements $SectionSubdivisionCopyWith<$Res> {
  factory _$SectionSubdivisionCopyWith(
          _SectionSubdivision value, $Res Function(_SectionSubdivision) then) =
      __$SectionSubdivisionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? headLine,
      String? label,
      String? paragraph,
      ResumeSection? resumeSection});

  @override
  $ResumeSectionCopyWith<$Res>? get resumeSection;
}

/// @nodoc
class __$SectionSubdivisionCopyWithImpl<$Res>
    extends _$SectionSubdivisionCopyWithImpl<$Res>
    implements _$SectionSubdivisionCopyWith<$Res> {
  __$SectionSubdivisionCopyWithImpl(
      _SectionSubdivision _value, $Res Function(_SectionSubdivision) _then)
      : super(_value, (v) => _then(v as _SectionSubdivision));

  @override
  _SectionSubdivision get _value => super._value as _SectionSubdivision;

  @override
  $Res call({
    Object? headLine = freezed,
    Object? label = freezed,
    Object? paragraph = freezed,
    Object? resumeSection = freezed,
  }) {
    return _then(_SectionSubdivision(
      headLine: headLine == freezed
          ? _value.headLine
          : headLine // ignore: cast_nullable_to_non_nullable
              as String?,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      paragraph: paragraph == freezed
          ? _value.paragraph
          : paragraph // ignore: cast_nullable_to_non_nullable
              as String?,
      resumeSection: resumeSection == freezed
          ? _value.resumeSection
          : resumeSection // ignore: cast_nullable_to_non_nullable
              as ResumeSection?,
    ));
  }
}

/// @nodoc

class _$_SectionSubdivision implements _SectionSubdivision {
  _$_SectionSubdivision(
      {this.headLine, this.label, this.paragraph, this.resumeSection});

  @override
  final String? headLine;
  @override
  final String? label;
  @override
  final String? paragraph;
  @override
  final ResumeSection? resumeSection;

  @override
  String toString() {
    return 'SectionSubdivision(headLine: $headLine, label: $label, paragraph: $paragraph, resumeSection: $resumeSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SectionSubdivision &&
            const DeepCollectionEquality().equals(other.headLine, headLine) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.paragraph, paragraph) &&
            const DeepCollectionEquality()
                .equals(other.resumeSection, resumeSection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(headLine),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(paragraph),
      const DeepCollectionEquality().hash(resumeSection));

  @JsonKey(ignore: true)
  @override
  _$SectionSubdivisionCopyWith<_SectionSubdivision> get copyWith =>
      __$SectionSubdivisionCopyWithImpl<_SectionSubdivision>(this, _$identity);
}

abstract class _SectionSubdivision implements SectionSubdivision {
  factory _SectionSubdivision(
      {String? headLine,
      String? label,
      String? paragraph,
      ResumeSection? resumeSection}) = _$_SectionSubdivision;

  @override
  String? get headLine;
  @override
  String? get label;
  @override
  String? get paragraph;
  @override
  ResumeSection? get resumeSection;
  @override
  @JsonKey(ignore: true)
  _$SectionSubdivisionCopyWith<_SectionSubdivision> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumeUserBasicInfoTearOff {
  const _$ResumeUserBasicInfoTearOff();

  _ResumeUserBasicInfo call(
      {required String name,
      String? email,
      String? phoneNumber,
      String? currentResidence,
      String? placeOfBirth,
      String? gender,
      String? nationality,
      String? dateOfBirth,
      File? profileImage}) {
    return _ResumeUserBasicInfo(
      name: name,
      email: email,
      phoneNumber: phoneNumber,
      currentResidence: currentResidence,
      placeOfBirth: placeOfBirth,
      gender: gender,
      nationality: nationality,
      dateOfBirth: dateOfBirth,
      profileImage: profileImage,
    );
  }
}

/// @nodoc
const $ResumeUserBasicInfo = _$ResumeUserBasicInfoTearOff();

/// @nodoc
mixin _$ResumeUserBasicInfo {
  String get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get currentResidence => throw _privateConstructorUsedError;
  String? get placeOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get nationality => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  File? get profileImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeUserBasicInfoCopyWith<ResumeUserBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeUserBasicInfoCopyWith<$Res> {
  factory $ResumeUserBasicInfoCopyWith(
          ResumeUserBasicInfo value, $Res Function(ResumeUserBasicInfo) then) =
      _$ResumeUserBasicInfoCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String? email,
      String? phoneNumber,
      String? currentResidence,
      String? placeOfBirth,
      String? gender,
      String? nationality,
      String? dateOfBirth,
      File? profileImage});
}

/// @nodoc
class _$ResumeUserBasicInfoCopyWithImpl<$Res>
    implements $ResumeUserBasicInfoCopyWith<$Res> {
  _$ResumeUserBasicInfoCopyWithImpl(this._value, this._then);

  final ResumeUserBasicInfo _value;
  // ignore: unused_field
  final $Res Function(ResumeUserBasicInfo) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? currentResidence = freezed,
    Object? placeOfBirth = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? dateOfBirth = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      currentResidence: currentResidence == freezed
          ? _value.currentResidence
          : currentResidence // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc
abstract class _$ResumeUserBasicInfoCopyWith<$Res>
    implements $ResumeUserBasicInfoCopyWith<$Res> {
  factory _$ResumeUserBasicInfoCopyWith(_ResumeUserBasicInfo value,
          $Res Function(_ResumeUserBasicInfo) then) =
      __$ResumeUserBasicInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String? email,
      String? phoneNumber,
      String? currentResidence,
      String? placeOfBirth,
      String? gender,
      String? nationality,
      String? dateOfBirth,
      File? profileImage});
}

/// @nodoc
class __$ResumeUserBasicInfoCopyWithImpl<$Res>
    extends _$ResumeUserBasicInfoCopyWithImpl<$Res>
    implements _$ResumeUserBasicInfoCopyWith<$Res> {
  __$ResumeUserBasicInfoCopyWithImpl(
      _ResumeUserBasicInfo _value, $Res Function(_ResumeUserBasicInfo) _then)
      : super(_value, (v) => _then(v as _ResumeUserBasicInfo));

  @override
  _ResumeUserBasicInfo get _value => super._value as _ResumeUserBasicInfo;

  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? currentResidence = freezed,
    Object? placeOfBirth = freezed,
    Object? gender = freezed,
    Object? nationality = freezed,
    Object? dateOfBirth = freezed,
    Object? profileImage = freezed,
  }) {
    return _then(_ResumeUserBasicInfo(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      currentResidence: currentResidence == freezed
          ? _value.currentResidence
          : currentResidence // ignore: cast_nullable_to_non_nullable
              as String?,
      placeOfBirth: placeOfBirth == freezed
          ? _value.placeOfBirth
          : placeOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: nationality == freezed
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_ResumeUserBasicInfo implements _ResumeUserBasicInfo {
  _$_ResumeUserBasicInfo(
      {required this.name,
      this.email,
      this.phoneNumber,
      this.currentResidence,
      this.placeOfBirth,
      this.gender,
      this.nationality,
      this.dateOfBirth,
      this.profileImage});

  @override
  final String name;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? currentResidence;
  @override
  final String? placeOfBirth;
  @override
  final String? gender;
  @override
  final String? nationality;
  @override
  final String? dateOfBirth;
  @override
  final File? profileImage;

  @override
  String toString() {
    return 'ResumeUserBasicInfo(name: $name, email: $email, phoneNumber: $phoneNumber, currentResidence: $currentResidence, placeOfBirth: $placeOfBirth, gender: $gender, nationality: $nationality, dateOfBirth: $dateOfBirth, profileImage: $profileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResumeUserBasicInfo &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.currentResidence, currentResidence) &&
            const DeepCollectionEquality()
                .equals(other.placeOfBirth, placeOfBirth) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.nationality, nationality) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(currentResidence),
      const DeepCollectionEquality().hash(placeOfBirth),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(nationality),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(profileImage));

  @JsonKey(ignore: true)
  @override
  _$ResumeUserBasicInfoCopyWith<_ResumeUserBasicInfo> get copyWith =>
      __$ResumeUserBasicInfoCopyWithImpl<_ResumeUserBasicInfo>(
          this, _$identity);
}

abstract class _ResumeUserBasicInfo implements ResumeUserBasicInfo {
  factory _ResumeUserBasicInfo(
      {required String name,
      String? email,
      String? phoneNumber,
      String? currentResidence,
      String? placeOfBirth,
      String? gender,
      String? nationality,
      String? dateOfBirth,
      File? profileImage}) = _$_ResumeUserBasicInfo;

  @override
  String get name;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get currentResidence;
  @override
  String? get placeOfBirth;
  @override
  String? get gender;
  @override
  String? get nationality;
  @override
  String? get dateOfBirth;
  @override
  File? get profileImage;
  @override
  @JsonKey(ignore: true)
  _$ResumeUserBasicInfoCopyWith<_ResumeUserBasicInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
