// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resume_subdivisions_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumeSubdivisionsManagerEventTearOff {
  const _$ResumeSubdivisionsManagerEventTearOff();

  _SubdivisionInserted subdivisionInserted(
      SectionSubdivision sectionSubdivision,
      int sectionIndex,
      int subdivisionInsertionIndex) {
    return _SubdivisionInserted(
      sectionSubdivision,
      sectionIndex,
      subdivisionInsertionIndex,
    );
  }

  _SubdivisionAdded subdivisionAdded(int sectionIndex) {
    return _SubdivisionAdded(
      sectionIndex,
    );
  }

  _SubdivisionRemoved subdivisionRemoved(
      int sectionIndex, int subdivisionIndex) {
    return _SubdivisionRemoved(
      sectionIndex,
      subdivisionIndex,
    );
  }

  _SubdivisionDragStarted subdivisionDragStarted(
      SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex) {
    return _SubdivisionDragStarted(
      draggedSectionSubdivision,
      sectionIndex,
      subdivisionIndex,
    );
  }

  _SubdivisionDragUpdated subdivisionDragUpdated(double normalizedDy) {
    return _SubdivisionDragUpdated(
      normalizedDy,
    );
  }

  _SubdivisionDragEnded subdivisionDragEnded(
      SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex,
      bool wasAccepted) {
    return _SubdivisionDragEnded(
      draggedSectionSubdivision,
      sectionIndex,
      subdivisionIndex,
      wasAccepted,
    );
  }

  _SubdivisionLabelUpdated subdivisionLabelUpdated(
      String? newLabel, int sectionIndex, int subdivisionIndex) {
    return _SubdivisionLabelUpdated(
      newLabel,
      sectionIndex,
      subdivisionIndex,
    );
  }

  _SubdivisionParagraphUpdated subdivisionParagraphUpdated(
      String? newParagraph, int sectionIndex, int subdivisionIndex) {
    return _SubdivisionParagraphUpdated(
      newParagraph,
      sectionIndex,
      subdivisionIndex,
    );
  }

  _ResumeSectionsChanged resumeSectionsChanged() {
    return const _ResumeSectionsChanged();
  }
}

/// @nodoc
const $ResumeSubdivisionsManagerEvent =
    _$ResumeSubdivisionsManagerEventTearOff();

/// @nodoc
mixin _$ResumeSubdivisionsManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSubdivisionsManagerEventCopyWith<$Res> {
  factory $ResumeSubdivisionsManagerEventCopyWith(
          ResumeSubdivisionsManagerEvent value,
          $Res Function(ResumeSubdivisionsManagerEvent) then) =
      _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements $ResumeSubdivisionsManagerEventCopyWith<$Res> {
  _$ResumeSubdivisionsManagerEventCopyWithImpl(this._value, this._then);

  final ResumeSubdivisionsManagerEvent _value;
  // ignore: unused_field
  final $Res Function(ResumeSubdivisionsManagerEvent) _then;
}

/// @nodoc
abstract class _$SubdivisionInsertedCopyWith<$Res> {
  factory _$SubdivisionInsertedCopyWith(_SubdivisionInserted value,
          $Res Function(_SubdivisionInserted) then) =
      __$SubdivisionInsertedCopyWithImpl<$Res>;
  $Res call(
      {SectionSubdivision sectionSubdivision,
      int sectionIndex,
      int subdivisionInsertionIndex});

  $SectionSubdivisionCopyWith<$Res> get sectionSubdivision;
}

/// @nodoc
class __$SubdivisionInsertedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionInsertedCopyWith<$Res> {
  __$SubdivisionInsertedCopyWithImpl(
      _SubdivisionInserted _value, $Res Function(_SubdivisionInserted) _then)
      : super(_value, (v) => _then(v as _SubdivisionInserted));

  @override
  _SubdivisionInserted get _value => super._value as _SubdivisionInserted;

  @override
  $Res call({
    Object? sectionSubdivision = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionInsertionIndex = freezed,
  }) {
    return _then(_SubdivisionInserted(
      sectionSubdivision == freezed
          ? _value.sectionSubdivision
          : sectionSubdivision // ignore: cast_nullable_to_non_nullable
              as SectionSubdivision,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionInsertionIndex == freezed
          ? _value.subdivisionInsertionIndex
          : subdivisionInsertionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SectionSubdivisionCopyWith<$Res> get sectionSubdivision {
    return $SectionSubdivisionCopyWith<$Res>(_value.sectionSubdivision,
        (value) {
      return _then(_value.copyWith(sectionSubdivision: value));
    });
  }
}

/// @nodoc

class _$_SubdivisionInserted implements _SubdivisionInserted {
  const _$_SubdivisionInserted(this.sectionSubdivision, this.sectionIndex,
      this.subdivisionInsertionIndex);

  @override
  final SectionSubdivision sectionSubdivision;
  @override
  final int sectionIndex;
  @override
  final int subdivisionInsertionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionInserted(sectionSubdivision: $sectionSubdivision, sectionIndex: $sectionIndex, subdivisionInsertionIndex: $subdivisionInsertionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionInserted &&
            const DeepCollectionEquality()
                .equals(other.sectionSubdivision, sectionSubdivision) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality().equals(
                other.subdivisionInsertionIndex, subdivisionInsertionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sectionSubdivision),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionInsertionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionInsertedCopyWith<_SubdivisionInserted> get copyWith =>
      __$SubdivisionInsertedCopyWithImpl<_SubdivisionInserted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionInserted(
        sectionSubdivision, sectionIndex, subdivisionInsertionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionInserted?.call(
        sectionSubdivision, sectionIndex, subdivisionInsertionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionInserted != null) {
      return subdivisionInserted(
          sectionSubdivision, sectionIndex, subdivisionInsertionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionInserted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionInserted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionInserted != null) {
      return subdivisionInserted(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionInserted implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionInserted(SectionSubdivision sectionSubdivision,
      int sectionIndex, int subdivisionInsertionIndex) = _$_SubdivisionInserted;

  SectionSubdivision get sectionSubdivision;
  int get sectionIndex;
  int get subdivisionInsertionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionInsertedCopyWith<_SubdivisionInserted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionAddedCopyWith<$Res> {
  factory _$SubdivisionAddedCopyWith(
          _SubdivisionAdded value, $Res Function(_SubdivisionAdded) then) =
      __$SubdivisionAddedCopyWithImpl<$Res>;
  $Res call({int sectionIndex});
}

/// @nodoc
class __$SubdivisionAddedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionAddedCopyWith<$Res> {
  __$SubdivisionAddedCopyWithImpl(
      _SubdivisionAdded _value, $Res Function(_SubdivisionAdded) _then)
      : super(_value, (v) => _then(v as _SubdivisionAdded));

  @override
  _SubdivisionAdded get _value => super._value as _SubdivisionAdded;

  @override
  $Res call({
    Object? sectionIndex = freezed,
  }) {
    return _then(_SubdivisionAdded(
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubdivisionAdded implements _SubdivisionAdded {
  const _$_SubdivisionAdded(this.sectionIndex);

  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionAdded(sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionAdded &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionAddedCopyWith<_SubdivisionAdded> get copyWith =>
      __$SubdivisionAddedCopyWithImpl<_SubdivisionAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionAdded(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionAdded?.call(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionAdded != null) {
      return subdivisionAdded(sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionAdded != null) {
      return subdivisionAdded(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionAdded implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionAdded(int sectionIndex) = _$_SubdivisionAdded;

  int get sectionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionAddedCopyWith<_SubdivisionAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionRemovedCopyWith<$Res> {
  factory _$SubdivisionRemovedCopyWith(
          _SubdivisionRemoved value, $Res Function(_SubdivisionRemoved) then) =
      __$SubdivisionRemovedCopyWithImpl<$Res>;
  $Res call({int sectionIndex, int subdivisionIndex});
}

/// @nodoc
class __$SubdivisionRemovedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionRemovedCopyWith<$Res> {
  __$SubdivisionRemovedCopyWithImpl(
      _SubdivisionRemoved _value, $Res Function(_SubdivisionRemoved) _then)
      : super(_value, (v) => _then(v as _SubdivisionRemoved));

  @override
  _SubdivisionRemoved get _value => super._value as _SubdivisionRemoved;

  @override
  $Res call({
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
  }) {
    return _then(_SubdivisionRemoved(
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubdivisionRemoved implements _SubdivisionRemoved {
  const _$_SubdivisionRemoved(this.sectionIndex, this.subdivisionIndex);

  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionRemoved(sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionRemoved &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionRemovedCopyWith<_SubdivisionRemoved> get copyWith =>
      __$SubdivisionRemovedCopyWithImpl<_SubdivisionRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionRemoved(sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionRemoved?.call(sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionRemoved != null) {
      return subdivisionRemoved(sectionIndex, subdivisionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionRemoved != null) {
      return subdivisionRemoved(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionRemoved implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionRemoved(int sectionIndex, int subdivisionIndex) =
      _$_SubdivisionRemoved;

  int get sectionIndex;
  int get subdivisionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionRemovedCopyWith<_SubdivisionRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionDragStartedCopyWith<$Res> {
  factory _$SubdivisionDragStartedCopyWith(_SubdivisionDragStarted value,
          $Res Function(_SubdivisionDragStarted) then) =
      __$SubdivisionDragStartedCopyWithImpl<$Res>;
  $Res call(
      {SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex});

  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision;
}

/// @nodoc
class __$SubdivisionDragStartedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionDragStartedCopyWith<$Res> {
  __$SubdivisionDragStartedCopyWithImpl(_SubdivisionDragStarted _value,
      $Res Function(_SubdivisionDragStarted) _then)
      : super(_value, (v) => _then(v as _SubdivisionDragStarted));

  @override
  _SubdivisionDragStarted get _value => super._value as _SubdivisionDragStarted;

  @override
  $Res call({
    Object? draggedSectionSubdivision = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
  }) {
    return _then(_SubdivisionDragStarted(
      draggedSectionSubdivision == freezed
          ? _value.draggedSectionSubdivision
          : draggedSectionSubdivision // ignore: cast_nullable_to_non_nullable
              as SectionSubdivision,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision {
    return $SectionSubdivisionCopyWith<$Res>(_value.draggedSectionSubdivision,
        (value) {
      return _then(_value.copyWith(draggedSectionSubdivision: value));
    });
  }
}

/// @nodoc

class _$_SubdivisionDragStarted implements _SubdivisionDragStarted {
  const _$_SubdivisionDragStarted(
      this.draggedSectionSubdivision, this.sectionIndex, this.subdivisionIndex);

  @override
  final SectionSubdivision draggedSectionSubdivision;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionDragStarted(draggedSectionSubdivision: $draggedSectionSubdivision, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionDragStarted &&
            const DeepCollectionEquality().equals(
                other.draggedSectionSubdivision, draggedSectionSubdivision) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(draggedSectionSubdivision),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionDragStartedCopyWith<_SubdivisionDragStarted> get copyWith =>
      __$SubdivisionDragStartedCopyWithImpl<_SubdivisionDragStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionDragStarted(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionDragStarted?.call(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragStarted != null) {
      return subdivisionDragStarted(
          draggedSectionSubdivision, sectionIndex, subdivisionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionDragStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionDragStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragStarted != null) {
      return subdivisionDragStarted(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionDragStarted
    implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionDragStarted(
      SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex) = _$_SubdivisionDragStarted;

  SectionSubdivision get draggedSectionSubdivision;
  int get sectionIndex;
  int get subdivisionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionDragStartedCopyWith<_SubdivisionDragStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionDragUpdatedCopyWith<$Res> {
  factory _$SubdivisionDragUpdatedCopyWith(_SubdivisionDragUpdated value,
          $Res Function(_SubdivisionDragUpdated) then) =
      __$SubdivisionDragUpdatedCopyWithImpl<$Res>;
  $Res call({double normalizedDy});
}

/// @nodoc
class __$SubdivisionDragUpdatedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionDragUpdatedCopyWith<$Res> {
  __$SubdivisionDragUpdatedCopyWithImpl(_SubdivisionDragUpdated _value,
      $Res Function(_SubdivisionDragUpdated) _then)
      : super(_value, (v) => _then(v as _SubdivisionDragUpdated));

  @override
  _SubdivisionDragUpdated get _value => super._value as _SubdivisionDragUpdated;

  @override
  $Res call({
    Object? normalizedDy = freezed,
  }) {
    return _then(_SubdivisionDragUpdated(
      normalizedDy == freezed
          ? _value.normalizedDy
          : normalizedDy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SubdivisionDragUpdated implements _SubdivisionDragUpdated {
  const _$_SubdivisionDragUpdated(this.normalizedDy);

  @override
  final double normalizedDy;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionDragUpdated(normalizedDy: $normalizedDy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionDragUpdated &&
            const DeepCollectionEquality()
                .equals(other.normalizedDy, normalizedDy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(normalizedDy));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionDragUpdatedCopyWith<_SubdivisionDragUpdated> get copyWith =>
      __$SubdivisionDragUpdatedCopyWithImpl<_SubdivisionDragUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionDragUpdated(normalizedDy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionDragUpdated?.call(normalizedDy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragUpdated != null) {
      return subdivisionDragUpdated(normalizedDy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionDragUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionDragUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragUpdated != null) {
      return subdivisionDragUpdated(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionDragUpdated
    implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionDragUpdated(double normalizedDy) =
      _$_SubdivisionDragUpdated;

  double get normalizedDy;
  @JsonKey(ignore: true)
  _$SubdivisionDragUpdatedCopyWith<_SubdivisionDragUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionDragEndedCopyWith<$Res> {
  factory _$SubdivisionDragEndedCopyWith(_SubdivisionDragEnded value,
          $Res Function(_SubdivisionDragEnded) then) =
      __$SubdivisionDragEndedCopyWithImpl<$Res>;
  $Res call(
      {SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex,
      bool wasAccepted});

  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision;
}

/// @nodoc
class __$SubdivisionDragEndedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionDragEndedCopyWith<$Res> {
  __$SubdivisionDragEndedCopyWithImpl(
      _SubdivisionDragEnded _value, $Res Function(_SubdivisionDragEnded) _then)
      : super(_value, (v) => _then(v as _SubdivisionDragEnded));

  @override
  _SubdivisionDragEnded get _value => super._value as _SubdivisionDragEnded;

  @override
  $Res call({
    Object? draggedSectionSubdivision = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
    Object? wasAccepted = freezed,
  }) {
    return _then(_SubdivisionDragEnded(
      draggedSectionSubdivision == freezed
          ? _value.draggedSectionSubdivision
          : draggedSectionSubdivision // ignore: cast_nullable_to_non_nullable
              as SectionSubdivision,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      wasAccepted == freezed
          ? _value.wasAccepted
          : wasAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision {
    return $SectionSubdivisionCopyWith<$Res>(_value.draggedSectionSubdivision,
        (value) {
      return _then(_value.copyWith(draggedSectionSubdivision: value));
    });
  }
}

/// @nodoc

class _$_SubdivisionDragEnded implements _SubdivisionDragEnded {
  const _$_SubdivisionDragEnded(this.draggedSectionSubdivision,
      this.sectionIndex, this.subdivisionIndex, this.wasAccepted);

  @override
  final SectionSubdivision draggedSectionSubdivision;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;
  @override
  final bool wasAccepted;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionDragEnded(draggedSectionSubdivision: $draggedSectionSubdivision, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex, wasAccepted: $wasAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionDragEnded &&
            const DeepCollectionEquality().equals(
                other.draggedSectionSubdivision, draggedSectionSubdivision) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex) &&
            const DeepCollectionEquality()
                .equals(other.wasAccepted, wasAccepted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(draggedSectionSubdivision),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex),
      const DeepCollectionEquality().hash(wasAccepted));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionDragEndedCopyWith<_SubdivisionDragEnded> get copyWith =>
      __$SubdivisionDragEndedCopyWithImpl<_SubdivisionDragEnded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionDragEnded(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex, wasAccepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionDragEnded?.call(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex, wasAccepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragEnded != null) {
      return subdivisionDragEnded(draggedSectionSubdivision, sectionIndex,
          subdivisionIndex, wasAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionDragEnded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionDragEnded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionDragEnded != null) {
      return subdivisionDragEnded(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionDragEnded implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionDragEnded(
      SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex,
      bool wasAccepted) = _$_SubdivisionDragEnded;

  SectionSubdivision get draggedSectionSubdivision;
  int get sectionIndex;
  int get subdivisionIndex;
  bool get wasAccepted;
  @JsonKey(ignore: true)
  _$SubdivisionDragEndedCopyWith<_SubdivisionDragEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionLabelUpdatedCopyWith<$Res> {
  factory _$SubdivisionLabelUpdatedCopyWith(_SubdivisionLabelUpdated value,
          $Res Function(_SubdivisionLabelUpdated) then) =
      __$SubdivisionLabelUpdatedCopyWithImpl<$Res>;
  $Res call({String? newLabel, int sectionIndex, int subdivisionIndex});
}

/// @nodoc
class __$SubdivisionLabelUpdatedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionLabelUpdatedCopyWith<$Res> {
  __$SubdivisionLabelUpdatedCopyWithImpl(_SubdivisionLabelUpdated _value,
      $Res Function(_SubdivisionLabelUpdated) _then)
      : super(_value, (v) => _then(v as _SubdivisionLabelUpdated));

  @override
  _SubdivisionLabelUpdated get _value =>
      super._value as _SubdivisionLabelUpdated;

  @override
  $Res call({
    Object? newLabel = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
  }) {
    return _then(_SubdivisionLabelUpdated(
      newLabel == freezed
          ? _value.newLabel
          : newLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubdivisionLabelUpdated implements _SubdivisionLabelUpdated {
  const _$_SubdivisionLabelUpdated(
      this.newLabel, this.sectionIndex, this.subdivisionIndex);

  @override
  final String? newLabel;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionLabelUpdated(newLabel: $newLabel, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionLabelUpdated &&
            const DeepCollectionEquality().equals(other.newLabel, newLabel) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newLabel),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionLabelUpdatedCopyWith<_SubdivisionLabelUpdated> get copyWith =>
      __$SubdivisionLabelUpdatedCopyWithImpl<_SubdivisionLabelUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionLabelUpdated(newLabel, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionLabelUpdated?.call(
        newLabel, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionLabelUpdated != null) {
      return subdivisionLabelUpdated(newLabel, sectionIndex, subdivisionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionLabelUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionLabelUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionLabelUpdated != null) {
      return subdivisionLabelUpdated(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionLabelUpdated
    implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionLabelUpdated(
          String? newLabel, int sectionIndex, int subdivisionIndex) =
      _$_SubdivisionLabelUpdated;

  String? get newLabel;
  int get sectionIndex;
  int get subdivisionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionLabelUpdatedCopyWith<_SubdivisionLabelUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubdivisionParagraphUpdatedCopyWith<$Res> {
  factory _$SubdivisionParagraphUpdatedCopyWith(
          _SubdivisionParagraphUpdated value,
          $Res Function(_SubdivisionParagraphUpdated) then) =
      __$SubdivisionParagraphUpdatedCopyWithImpl<$Res>;
  $Res call({String? newParagraph, int sectionIndex, int subdivisionIndex});
}

/// @nodoc
class __$SubdivisionParagraphUpdatedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$SubdivisionParagraphUpdatedCopyWith<$Res> {
  __$SubdivisionParagraphUpdatedCopyWithImpl(
      _SubdivisionParagraphUpdated _value,
      $Res Function(_SubdivisionParagraphUpdated) _then)
      : super(_value, (v) => _then(v as _SubdivisionParagraphUpdated));

  @override
  _SubdivisionParagraphUpdated get _value =>
      super._value as _SubdivisionParagraphUpdated;

  @override
  $Res call({
    Object? newParagraph = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
  }) {
    return _then(_SubdivisionParagraphUpdated(
      newParagraph == freezed
          ? _value.newParagraph
          : newParagraph // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubdivisionParagraphUpdated implements _SubdivisionParagraphUpdated {
  const _$_SubdivisionParagraphUpdated(
      this.newParagraph, this.sectionIndex, this.subdivisionIndex);

  @override
  final String? newParagraph;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.subdivisionParagraphUpdated(newParagraph: $newParagraph, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubdivisionParagraphUpdated &&
            const DeepCollectionEquality()
                .equals(other.newParagraph, newParagraph) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newParagraph),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex));

  @JsonKey(ignore: true)
  @override
  _$SubdivisionParagraphUpdatedCopyWith<_SubdivisionParagraphUpdated>
      get copyWith => __$SubdivisionParagraphUpdatedCopyWithImpl<
          _SubdivisionParagraphUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return subdivisionParagraphUpdated(
        newParagraph, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return subdivisionParagraphUpdated?.call(
        newParagraph, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionParagraphUpdated != null) {
      return subdivisionParagraphUpdated(
          newParagraph, sectionIndex, subdivisionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return subdivisionParagraphUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return subdivisionParagraphUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (subdivisionParagraphUpdated != null) {
      return subdivisionParagraphUpdated(this);
    }
    return orElse();
  }
}

abstract class _SubdivisionParagraphUpdated
    implements ResumeSubdivisionsManagerEvent {
  const factory _SubdivisionParagraphUpdated(
          String? newParagraph, int sectionIndex, int subdivisionIndex) =
      _$_SubdivisionParagraphUpdated;

  String? get newParagraph;
  int get sectionIndex;
  int get subdivisionIndex;
  @JsonKey(ignore: true)
  _$SubdivisionParagraphUpdatedCopyWith<_SubdivisionParagraphUpdated>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResumeSectionsChangedCopyWith<$Res> {
  factory _$ResumeSectionsChangedCopyWith(_ResumeSectionsChanged value,
          $Res Function(_ResumeSectionsChanged) then) =
      __$ResumeSectionsChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResumeSectionsChangedCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerEventCopyWithImpl<$Res>
    implements _$ResumeSectionsChangedCopyWith<$Res> {
  __$ResumeSectionsChangedCopyWithImpl(_ResumeSectionsChanged _value,
      $Res Function(_ResumeSectionsChanged) _then)
      : super(_value, (v) => _then(v as _ResumeSectionsChanged));

  @override
  _ResumeSectionsChanged get _value => super._value as _ResumeSectionsChanged;
}

/// @nodoc

class _$_ResumeSectionsChanged implements _ResumeSectionsChanged {
  const _$_ResumeSectionsChanged();

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerEvent.resumeSectionsChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ResumeSectionsChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SectionSubdivision sectionSubdivision,
            int sectionIndex, int subdivisionInsertionIndex)
        subdivisionInserted,
    required TResult Function(int sectionIndex) subdivisionAdded,
    required TResult Function(int sectionIndex, int subdivisionIndex)
        subdivisionRemoved,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        subdivisionDragStarted,
    required TResult Function(double normalizedDy) subdivisionDragUpdated,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        subdivisionDragEnded,
    required TResult Function(
            String? newLabel, int sectionIndex, int subdivisionIndex)
        subdivisionLabelUpdated,
    required TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)
        subdivisionParagraphUpdated,
    required TResult Function() resumeSectionsChanged,
  }) {
    return resumeSectionsChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
  }) {
    return resumeSectionsChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SectionSubdivision sectionSubdivision, int sectionIndex,
            int subdivisionInsertionIndex)?
        subdivisionInserted,
    TResult Function(int sectionIndex)? subdivisionAdded,
    TResult Function(int sectionIndex, int subdivisionIndex)?
        subdivisionRemoved,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        subdivisionDragStarted,
    TResult Function(double normalizedDy)? subdivisionDragUpdated,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        subdivisionDragEnded,
    TResult Function(String? newLabel, int sectionIndex, int subdivisionIndex)?
        subdivisionLabelUpdated,
    TResult Function(
            String? newParagraph, int sectionIndex, int subdivisionIndex)?
        subdivisionParagraphUpdated,
    TResult Function()? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (resumeSectionsChanged != null) {
      return resumeSectionsChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubdivisionInserted value) subdivisionInserted,
    required TResult Function(_SubdivisionAdded value) subdivisionAdded,
    required TResult Function(_SubdivisionRemoved value) subdivisionRemoved,
    required TResult Function(_SubdivisionDragStarted value)
        subdivisionDragStarted,
    required TResult Function(_SubdivisionDragUpdated value)
        subdivisionDragUpdated,
    required TResult Function(_SubdivisionDragEnded value) subdivisionDragEnded,
    required TResult Function(_SubdivisionLabelUpdated value)
        subdivisionLabelUpdated,
    required TResult Function(_SubdivisionParagraphUpdated value)
        subdivisionParagraphUpdated,
    required TResult Function(_ResumeSectionsChanged value)
        resumeSectionsChanged,
  }) {
    return resumeSectionsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
  }) {
    return resumeSectionsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubdivisionInserted value)? subdivisionInserted,
    TResult Function(_SubdivisionAdded value)? subdivisionAdded,
    TResult Function(_SubdivisionRemoved value)? subdivisionRemoved,
    TResult Function(_SubdivisionDragStarted value)? subdivisionDragStarted,
    TResult Function(_SubdivisionDragUpdated value)? subdivisionDragUpdated,
    TResult Function(_SubdivisionDragEnded value)? subdivisionDragEnded,
    TResult Function(_SubdivisionLabelUpdated value)? subdivisionLabelUpdated,
    TResult Function(_SubdivisionParagraphUpdated value)?
        subdivisionParagraphUpdated,
    TResult Function(_ResumeSectionsChanged value)? resumeSectionsChanged,
    required TResult orElse(),
  }) {
    if (resumeSectionsChanged != null) {
      return resumeSectionsChanged(this);
    }
    return orElse();
  }
}

abstract class _ResumeSectionsChanged
    implements ResumeSubdivisionsManagerEvent {
  const factory _ResumeSectionsChanged() = _$_ResumeSectionsChanged;
}

/// @nodoc
class _$ResumeSubdivisionsManagerStateTearOff {
  const _$ResumeSubdivisionsManagerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ChangeSuccess changeSuccess(
      UnmodifiableListView<SectionSubdivision> newSubdivisions,
      int sectionIndex) {
    return _ChangeSuccess(
      newSubdivisions,
      sectionIndex,
    );
  }

  _StartDragging startDragging(SectionSubdivision draggedSectionSubdivision,
      int sectionIndex, int subdivisionIndex) {
    return _StartDragging(
      draggedSectionSubdivision,
      sectionIndex,
      subdivisionIndex,
    );
  }

  _DragUpdate dragUpdate(double normalizedDy) {
    return _DragUpdate(
      normalizedDy,
    );
  }

  _DragEnd dragEnd(SectionSubdivision draggedSectionSubdivision,
      int sectionIndex, int subdivisionIndex, bool wasAccepted) {
    return _DragEnd(
      draggedSectionSubdivision,
      sectionIndex,
      subdivisionIndex,
      wasAccepted,
    );
  }
}

/// @nodoc
const $ResumeSubdivisionsManagerState =
    _$ResumeSubdivisionsManagerStateTearOff();

/// @nodoc
mixin _$ResumeSubdivisionsManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSubdivisionsManagerStateCopyWith<$Res> {
  factory $ResumeSubdivisionsManagerStateCopyWith(
          ResumeSubdivisionsManagerState value,
          $Res Function(ResumeSubdivisionsManagerState) then) =
      _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements $ResumeSubdivisionsManagerStateCopyWith<$Res> {
  _$ResumeSubdivisionsManagerStateCopyWithImpl(this._value, this._then);

  final ResumeSubdivisionsManagerState _value;
  // ignore: unused_field
  final $Res Function(ResumeSubdivisionsManagerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ResumeSubdivisionsManagerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ChangeSuccessCopyWith<$Res> {
  factory _$ChangeSuccessCopyWith(
          _ChangeSuccess value, $Res Function(_ChangeSuccess) then) =
      __$ChangeSuccessCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<SectionSubdivision> newSubdivisions,
      int sectionIndex});
}

/// @nodoc
class __$ChangeSuccessCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements _$ChangeSuccessCopyWith<$Res> {
  __$ChangeSuccessCopyWithImpl(
      _ChangeSuccess _value, $Res Function(_ChangeSuccess) _then)
      : super(_value, (v) => _then(v as _ChangeSuccess));

  @override
  _ChangeSuccess get _value => super._value as _ChangeSuccess;

  @override
  $Res call({
    Object? newSubdivisions = freezed,
    Object? sectionIndex = freezed,
  }) {
    return _then(_ChangeSuccess(
      newSubdivisions == freezed
          ? _value.newSubdivisions
          : newSubdivisions // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<SectionSubdivision>,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangeSuccess implements _ChangeSuccess {
  const _$_ChangeSuccess(this.newSubdivisions, this.sectionIndex);

  @override
  final UnmodifiableListView<SectionSubdivision> newSubdivisions;
  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerState.changeSuccess(newSubdivisions: $newSubdivisions, sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSuccess &&
            const DeepCollectionEquality()
                .equals(other.newSubdivisions, newSubdivisions) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newSubdivisions),
      const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$ChangeSuccessCopyWith<_ChangeSuccess> get copyWith =>
      __$ChangeSuccessCopyWithImpl<_ChangeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) {
    return changeSuccess(newSubdivisions, sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) {
    return changeSuccess?.call(newSubdivisions, sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(newSubdivisions, sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) {
    return changeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) {
    return changeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeSuccess implements ResumeSubdivisionsManagerState {
  const factory _ChangeSuccess(
      UnmodifiableListView<SectionSubdivision> newSubdivisions,
      int sectionIndex) = _$_ChangeSuccess;

  UnmodifiableListView<SectionSubdivision> get newSubdivisions;
  int get sectionIndex;
  @JsonKey(ignore: true)
  _$ChangeSuccessCopyWith<_ChangeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartDraggingCopyWith<$Res> {
  factory _$StartDraggingCopyWith(
          _StartDragging value, $Res Function(_StartDragging) then) =
      __$StartDraggingCopyWithImpl<$Res>;
  $Res call(
      {SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex});

  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision;
}

/// @nodoc
class __$StartDraggingCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements _$StartDraggingCopyWith<$Res> {
  __$StartDraggingCopyWithImpl(
      _StartDragging _value, $Res Function(_StartDragging) _then)
      : super(_value, (v) => _then(v as _StartDragging));

  @override
  _StartDragging get _value => super._value as _StartDragging;

  @override
  $Res call({
    Object? draggedSectionSubdivision = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
  }) {
    return _then(_StartDragging(
      draggedSectionSubdivision == freezed
          ? _value.draggedSectionSubdivision
          : draggedSectionSubdivision // ignore: cast_nullable_to_non_nullable
              as SectionSubdivision,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision {
    return $SectionSubdivisionCopyWith<$Res>(_value.draggedSectionSubdivision,
        (value) {
      return _then(_value.copyWith(draggedSectionSubdivision: value));
    });
  }
}

/// @nodoc

class _$_StartDragging implements _StartDragging {
  const _$_StartDragging(
      this.draggedSectionSubdivision, this.sectionIndex, this.subdivisionIndex);

  @override
  final SectionSubdivision draggedSectionSubdivision;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerState.startDragging(draggedSectionSubdivision: $draggedSectionSubdivision, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StartDragging &&
            const DeepCollectionEquality().equals(
                other.draggedSectionSubdivision, draggedSectionSubdivision) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(draggedSectionSubdivision),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex));

  @JsonKey(ignore: true)
  @override
  _$StartDraggingCopyWith<_StartDragging> get copyWith =>
      __$StartDraggingCopyWithImpl<_StartDragging>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) {
    return startDragging(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) {
    return startDragging?.call(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) {
    if (startDragging != null) {
      return startDragging(
          draggedSectionSubdivision, sectionIndex, subdivisionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) {
    return startDragging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) {
    return startDragging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) {
    if (startDragging != null) {
      return startDragging(this);
    }
    return orElse();
  }
}

abstract class _StartDragging implements ResumeSubdivisionsManagerState {
  const factory _StartDragging(SectionSubdivision draggedSectionSubdivision,
      int sectionIndex, int subdivisionIndex) = _$_StartDragging;

  SectionSubdivision get draggedSectionSubdivision;
  int get sectionIndex;
  int get subdivisionIndex;
  @JsonKey(ignore: true)
  _$StartDraggingCopyWith<_StartDragging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DragUpdateCopyWith<$Res> {
  factory _$DragUpdateCopyWith(
          _DragUpdate value, $Res Function(_DragUpdate) then) =
      __$DragUpdateCopyWithImpl<$Res>;
  $Res call({double normalizedDy});
}

/// @nodoc
class __$DragUpdateCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements _$DragUpdateCopyWith<$Res> {
  __$DragUpdateCopyWithImpl(
      _DragUpdate _value, $Res Function(_DragUpdate) _then)
      : super(_value, (v) => _then(v as _DragUpdate));

  @override
  _DragUpdate get _value => super._value as _DragUpdate;

  @override
  $Res call({
    Object? normalizedDy = freezed,
  }) {
    return _then(_DragUpdate(
      normalizedDy == freezed
          ? _value.normalizedDy
          : normalizedDy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_DragUpdate implements _DragUpdate {
  const _$_DragUpdate(this.normalizedDy);

  @override
  final double normalizedDy;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerState.dragUpdate(normalizedDy: $normalizedDy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DragUpdate &&
            const DeepCollectionEquality()
                .equals(other.normalizedDy, normalizedDy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(normalizedDy));

  @JsonKey(ignore: true)
  @override
  _$DragUpdateCopyWith<_DragUpdate> get copyWith =>
      __$DragUpdateCopyWithImpl<_DragUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) {
    return dragUpdate(normalizedDy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) {
    return dragUpdate?.call(normalizedDy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) {
    if (dragUpdate != null) {
      return dragUpdate(normalizedDy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) {
    return dragUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) {
    return dragUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) {
    if (dragUpdate != null) {
      return dragUpdate(this);
    }
    return orElse();
  }
}

abstract class _DragUpdate implements ResumeSubdivisionsManagerState {
  const factory _DragUpdate(double normalizedDy) = _$_DragUpdate;

  double get normalizedDy;
  @JsonKey(ignore: true)
  _$DragUpdateCopyWith<_DragUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DragEndCopyWith<$Res> {
  factory _$DragEndCopyWith(_DragEnd value, $Res Function(_DragEnd) then) =
      __$DragEndCopyWithImpl<$Res>;
  $Res call(
      {SectionSubdivision draggedSectionSubdivision,
      int sectionIndex,
      int subdivisionIndex,
      bool wasAccepted});

  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision;
}

/// @nodoc
class __$DragEndCopyWithImpl<$Res>
    extends _$ResumeSubdivisionsManagerStateCopyWithImpl<$Res>
    implements _$DragEndCopyWith<$Res> {
  __$DragEndCopyWithImpl(_DragEnd _value, $Res Function(_DragEnd) _then)
      : super(_value, (v) => _then(v as _DragEnd));

  @override
  _DragEnd get _value => super._value as _DragEnd;

  @override
  $Res call({
    Object? draggedSectionSubdivision = freezed,
    Object? sectionIndex = freezed,
    Object? subdivisionIndex = freezed,
    Object? wasAccepted = freezed,
  }) {
    return _then(_DragEnd(
      draggedSectionSubdivision == freezed
          ? _value.draggedSectionSubdivision
          : draggedSectionSubdivision // ignore: cast_nullable_to_non_nullable
              as SectionSubdivision,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      subdivisionIndex == freezed
          ? _value.subdivisionIndex
          : subdivisionIndex // ignore: cast_nullable_to_non_nullable
              as int,
      wasAccepted == freezed
          ? _value.wasAccepted
          : wasAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $SectionSubdivisionCopyWith<$Res> get draggedSectionSubdivision {
    return $SectionSubdivisionCopyWith<$Res>(_value.draggedSectionSubdivision,
        (value) {
      return _then(_value.copyWith(draggedSectionSubdivision: value));
    });
  }
}

/// @nodoc

class _$_DragEnd implements _DragEnd {
  const _$_DragEnd(this.draggedSectionSubdivision, this.sectionIndex,
      this.subdivisionIndex, this.wasAccepted);

  @override
  final SectionSubdivision draggedSectionSubdivision;
  @override
  final int sectionIndex;
  @override
  final int subdivisionIndex;
  @override
  final bool wasAccepted;

  @override
  String toString() {
    return 'ResumeSubdivisionsManagerState.dragEnd(draggedSectionSubdivision: $draggedSectionSubdivision, sectionIndex: $sectionIndex, subdivisionIndex: $subdivisionIndex, wasAccepted: $wasAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DragEnd &&
            const DeepCollectionEquality().equals(
                other.draggedSectionSubdivision, draggedSectionSubdivision) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex) &&
            const DeepCollectionEquality()
                .equals(other.subdivisionIndex, subdivisionIndex) &&
            const DeepCollectionEquality()
                .equals(other.wasAccepted, wasAccepted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(draggedSectionSubdivision),
      const DeepCollectionEquality().hash(sectionIndex),
      const DeepCollectionEquality().hash(subdivisionIndex),
      const DeepCollectionEquality().hash(wasAccepted));

  @JsonKey(ignore: true)
  @override
  _$DragEndCopyWith<_DragEnd> get copyWith =>
      __$DragEndCopyWithImpl<_DragEnd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)
        changeSuccess,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)
        startDragging,
    required TResult Function(double normalizedDy) dragUpdate,
    required TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)
        dragEnd,
  }) {
    return dragEnd(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex, wasAccepted);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
  }) {
    return dragEnd?.call(
        draggedSectionSubdivision, sectionIndex, subdivisionIndex, wasAccepted);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<SectionSubdivision> newSubdivisions,
            int sectionIndex)?
        changeSuccess,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex)?
        startDragging,
    TResult Function(double normalizedDy)? dragUpdate,
    TResult Function(SectionSubdivision draggedSectionSubdivision,
            int sectionIndex, int subdivisionIndex, bool wasAccepted)?
        dragEnd,
    required TResult orElse(),
  }) {
    if (dragEnd != null) {
      return dragEnd(draggedSectionSubdivision, sectionIndex, subdivisionIndex,
          wasAccepted);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
    required TResult Function(_StartDragging value) startDragging,
    required TResult Function(_DragUpdate value) dragUpdate,
    required TResult Function(_DragEnd value) dragEnd,
  }) {
    return dragEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
  }) {
    return dragEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    TResult Function(_StartDragging value)? startDragging,
    TResult Function(_DragUpdate value)? dragUpdate,
    TResult Function(_DragEnd value)? dragEnd,
    required TResult orElse(),
  }) {
    if (dragEnd != null) {
      return dragEnd(this);
    }
    return orElse();
  }
}

abstract class _DragEnd implements ResumeSubdivisionsManagerState {
  const factory _DragEnd(SectionSubdivision draggedSectionSubdivision,
      int sectionIndex, int subdivisionIndex, bool wasAccepted) = _$_DragEnd;

  SectionSubdivision get draggedSectionSubdivision;
  int get sectionIndex;
  int get subdivisionIndex;
  bool get wasAccepted;
  @JsonKey(ignore: true)
  _$DragEndCopyWith<_DragEnd> get copyWith =>
      throw _privateConstructorUsedError;
}
