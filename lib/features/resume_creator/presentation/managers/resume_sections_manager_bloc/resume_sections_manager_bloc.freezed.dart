// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resume_sections_manager_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumeSectionsManagerEventTearOff {
  const _$ResumeSectionsManagerEventTearOff();

  _SectionAdded sectionAdded() {
    return const _SectionAdded();
  }

  _SectionRemoved sectionRemoved(int sectionIndex) {
    return _SectionRemoved(
      sectionIndex,
    );
  }

  _SectionMovedUp sectionMovedUp(int sectionIndex) {
    return _SectionMovedUp(
      sectionIndex,
    );
  }

  _SectionMovedDown sectionMovedDown(int sectionIndex) {
    return _SectionMovedDown(
      sectionIndex,
    );
  }

  _SectionLabelUpdated sectionLabelUpdated(String? newLabel, int sectionIndex) {
    return _SectionLabelUpdated(
      newLabel,
      sectionIndex,
    );
  }
}

/// @nodoc
const $ResumeSectionsManagerEvent = _$ResumeSectionsManagerEventTearOff();

/// @nodoc
mixin _$ResumeSectionsManagerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSectionsManagerEventCopyWith<$Res> {
  factory $ResumeSectionsManagerEventCopyWith(ResumeSectionsManagerEvent value,
          $Res Function(ResumeSectionsManagerEvent) then) =
      _$ResumeSectionsManagerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements $ResumeSectionsManagerEventCopyWith<$Res> {
  _$ResumeSectionsManagerEventCopyWithImpl(this._value, this._then);

  final ResumeSectionsManagerEvent _value;
  // ignore: unused_field
  final $Res Function(ResumeSectionsManagerEvent) _then;
}

/// @nodoc
abstract class _$SectionAddedCopyWith<$Res> {
  factory _$SectionAddedCopyWith(
          _SectionAdded value, $Res Function(_SectionAdded) then) =
      __$SectionAddedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SectionAddedCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements _$SectionAddedCopyWith<$Res> {
  __$SectionAddedCopyWithImpl(
      _SectionAdded _value, $Res Function(_SectionAdded) _then)
      : super(_value, (v) => _then(v as _SectionAdded));

  @override
  _SectionAdded get _value => super._value as _SectionAdded;
}

/// @nodoc

class _$_SectionAdded implements _SectionAdded {
  const _$_SectionAdded();

  @override
  String toString() {
    return 'ResumeSectionsManagerEvent.sectionAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SectionAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) {
    return sectionAdded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) {
    return sectionAdded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionAdded != null) {
      return sectionAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) {
    return sectionAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) {
    return sectionAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionAdded != null) {
      return sectionAdded(this);
    }
    return orElse();
  }
}

abstract class _SectionAdded implements ResumeSectionsManagerEvent {
  const factory _SectionAdded() = _$_SectionAdded;
}

/// @nodoc
abstract class _$SectionRemovedCopyWith<$Res> {
  factory _$SectionRemovedCopyWith(
          _SectionRemoved value, $Res Function(_SectionRemoved) then) =
      __$SectionRemovedCopyWithImpl<$Res>;
  $Res call({int sectionIndex});
}

/// @nodoc
class __$SectionRemovedCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements _$SectionRemovedCopyWith<$Res> {
  __$SectionRemovedCopyWithImpl(
      _SectionRemoved _value, $Res Function(_SectionRemoved) _then)
      : super(_value, (v) => _then(v as _SectionRemoved));

  @override
  _SectionRemoved get _value => super._value as _SectionRemoved;

  @override
  $Res call({
    Object? sectionIndex = freezed,
  }) {
    return _then(_SectionRemoved(
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SectionRemoved implements _SectionRemoved {
  const _$_SectionRemoved(this.sectionIndex);

  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSectionsManagerEvent.sectionRemoved(sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SectionRemoved &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$SectionRemovedCopyWith<_SectionRemoved> get copyWith =>
      __$SectionRemovedCopyWithImpl<_SectionRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) {
    return sectionRemoved(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) {
    return sectionRemoved?.call(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionRemoved != null) {
      return sectionRemoved(sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) {
    return sectionRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) {
    return sectionRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionRemoved != null) {
      return sectionRemoved(this);
    }
    return orElse();
  }
}

abstract class _SectionRemoved implements ResumeSectionsManagerEvent {
  const factory _SectionRemoved(int sectionIndex) = _$_SectionRemoved;

  int get sectionIndex;
  @JsonKey(ignore: true)
  _$SectionRemovedCopyWith<_SectionRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SectionMovedUpCopyWith<$Res> {
  factory _$SectionMovedUpCopyWith(
          _SectionMovedUp value, $Res Function(_SectionMovedUp) then) =
      __$SectionMovedUpCopyWithImpl<$Res>;
  $Res call({int sectionIndex});
}

/// @nodoc
class __$SectionMovedUpCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements _$SectionMovedUpCopyWith<$Res> {
  __$SectionMovedUpCopyWithImpl(
      _SectionMovedUp _value, $Res Function(_SectionMovedUp) _then)
      : super(_value, (v) => _then(v as _SectionMovedUp));

  @override
  _SectionMovedUp get _value => super._value as _SectionMovedUp;

  @override
  $Res call({
    Object? sectionIndex = freezed,
  }) {
    return _then(_SectionMovedUp(
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SectionMovedUp implements _SectionMovedUp {
  const _$_SectionMovedUp(this.sectionIndex);

  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSectionsManagerEvent.sectionMovedUp(sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SectionMovedUp &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$SectionMovedUpCopyWith<_SectionMovedUp> get copyWith =>
      __$SectionMovedUpCopyWithImpl<_SectionMovedUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) {
    return sectionMovedUp(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) {
    return sectionMovedUp?.call(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionMovedUp != null) {
      return sectionMovedUp(sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) {
    return sectionMovedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) {
    return sectionMovedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionMovedUp != null) {
      return sectionMovedUp(this);
    }
    return orElse();
  }
}

abstract class _SectionMovedUp implements ResumeSectionsManagerEvent {
  const factory _SectionMovedUp(int sectionIndex) = _$_SectionMovedUp;

  int get sectionIndex;
  @JsonKey(ignore: true)
  _$SectionMovedUpCopyWith<_SectionMovedUp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SectionMovedDownCopyWith<$Res> {
  factory _$SectionMovedDownCopyWith(
          _SectionMovedDown value, $Res Function(_SectionMovedDown) then) =
      __$SectionMovedDownCopyWithImpl<$Res>;
  $Res call({int sectionIndex});
}

/// @nodoc
class __$SectionMovedDownCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements _$SectionMovedDownCopyWith<$Res> {
  __$SectionMovedDownCopyWithImpl(
      _SectionMovedDown _value, $Res Function(_SectionMovedDown) _then)
      : super(_value, (v) => _then(v as _SectionMovedDown));

  @override
  _SectionMovedDown get _value => super._value as _SectionMovedDown;

  @override
  $Res call({
    Object? sectionIndex = freezed,
  }) {
    return _then(_SectionMovedDown(
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SectionMovedDown implements _SectionMovedDown {
  const _$_SectionMovedDown(this.sectionIndex);

  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSectionsManagerEvent.sectionMovedDown(sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SectionMovedDown &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$SectionMovedDownCopyWith<_SectionMovedDown> get copyWith =>
      __$SectionMovedDownCopyWithImpl<_SectionMovedDown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) {
    return sectionMovedDown(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) {
    return sectionMovedDown?.call(sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionMovedDown != null) {
      return sectionMovedDown(sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) {
    return sectionMovedDown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) {
    return sectionMovedDown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionMovedDown != null) {
      return sectionMovedDown(this);
    }
    return orElse();
  }
}

abstract class _SectionMovedDown implements ResumeSectionsManagerEvent {
  const factory _SectionMovedDown(int sectionIndex) = _$_SectionMovedDown;

  int get sectionIndex;
  @JsonKey(ignore: true)
  _$SectionMovedDownCopyWith<_SectionMovedDown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SectionLabelUpdatedCopyWith<$Res> {
  factory _$SectionLabelUpdatedCopyWith(_SectionLabelUpdated value,
          $Res Function(_SectionLabelUpdated) then) =
      __$SectionLabelUpdatedCopyWithImpl<$Res>;
  $Res call({String? newLabel, int sectionIndex});
}

/// @nodoc
class __$SectionLabelUpdatedCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerEventCopyWithImpl<$Res>
    implements _$SectionLabelUpdatedCopyWith<$Res> {
  __$SectionLabelUpdatedCopyWithImpl(
      _SectionLabelUpdated _value, $Res Function(_SectionLabelUpdated) _then)
      : super(_value, (v) => _then(v as _SectionLabelUpdated));

  @override
  _SectionLabelUpdated get _value => super._value as _SectionLabelUpdated;

  @override
  $Res call({
    Object? newLabel = freezed,
    Object? sectionIndex = freezed,
  }) {
    return _then(_SectionLabelUpdated(
      newLabel == freezed
          ? _value.newLabel
          : newLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionIndex == freezed
          ? _value.sectionIndex
          : sectionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SectionLabelUpdated implements _SectionLabelUpdated {
  const _$_SectionLabelUpdated(this.newLabel, this.sectionIndex);

  @override
  final String? newLabel;
  @override
  final int sectionIndex;

  @override
  String toString() {
    return 'ResumeSectionsManagerEvent.sectionLabelUpdated(newLabel: $newLabel, sectionIndex: $sectionIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SectionLabelUpdated &&
            const DeepCollectionEquality().equals(other.newLabel, newLabel) &&
            const DeepCollectionEquality()
                .equals(other.sectionIndex, sectionIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newLabel),
      const DeepCollectionEquality().hash(sectionIndex));

  @JsonKey(ignore: true)
  @override
  _$SectionLabelUpdatedCopyWith<_SectionLabelUpdated> get copyWith =>
      __$SectionLabelUpdatedCopyWithImpl<_SectionLabelUpdated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sectionAdded,
    required TResult Function(int sectionIndex) sectionRemoved,
    required TResult Function(int sectionIndex) sectionMovedUp,
    required TResult Function(int sectionIndex) sectionMovedDown,
    required TResult Function(String? newLabel, int sectionIndex)
        sectionLabelUpdated,
  }) {
    return sectionLabelUpdated(newLabel, sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
  }) {
    return sectionLabelUpdated?.call(newLabel, sectionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sectionAdded,
    TResult Function(int sectionIndex)? sectionRemoved,
    TResult Function(int sectionIndex)? sectionMovedUp,
    TResult Function(int sectionIndex)? sectionMovedDown,
    TResult Function(String? newLabel, int sectionIndex)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionLabelUpdated != null) {
      return sectionLabelUpdated(newLabel, sectionIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SectionAdded value) sectionAdded,
    required TResult Function(_SectionRemoved value) sectionRemoved,
    required TResult Function(_SectionMovedUp value) sectionMovedUp,
    required TResult Function(_SectionMovedDown value) sectionMovedDown,
    required TResult Function(_SectionLabelUpdated value) sectionLabelUpdated,
  }) {
    return sectionLabelUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
  }) {
    return sectionLabelUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SectionAdded value)? sectionAdded,
    TResult Function(_SectionRemoved value)? sectionRemoved,
    TResult Function(_SectionMovedUp value)? sectionMovedUp,
    TResult Function(_SectionMovedDown value)? sectionMovedDown,
    TResult Function(_SectionLabelUpdated value)? sectionLabelUpdated,
    required TResult orElse(),
  }) {
    if (sectionLabelUpdated != null) {
      return sectionLabelUpdated(this);
    }
    return orElse();
  }
}

abstract class _SectionLabelUpdated implements ResumeSectionsManagerEvent {
  const factory _SectionLabelUpdated(String? newLabel, int sectionIndex) =
      _$_SectionLabelUpdated;

  String? get newLabel;
  int get sectionIndex;
  @JsonKey(ignore: true)
  _$SectionLabelUpdatedCopyWith<_SectionLabelUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumeSectionsManagerStateTearOff {
  const _$ResumeSectionsManagerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ChangeSuccess changeSuccess(
      UnmodifiableListView<ResumeSection> newResumeSections) {
    return _ChangeSuccess(
      newResumeSections,
    );
  }
}

/// @nodoc
const $ResumeSectionsManagerState = _$ResumeSectionsManagerStateTearOff();

/// @nodoc
mixin _$ResumeSectionsManagerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<ResumeSection> newResumeSections)
        changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeSectionsManagerStateCopyWith<$Res> {
  factory $ResumeSectionsManagerStateCopyWith(ResumeSectionsManagerState value,
          $Res Function(ResumeSectionsManagerState) then) =
      _$ResumeSectionsManagerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeSectionsManagerStateCopyWithImpl<$Res>
    implements $ResumeSectionsManagerStateCopyWith<$Res> {
  _$ResumeSectionsManagerStateCopyWithImpl(this._value, this._then);

  final ResumeSectionsManagerState _value;
  // ignore: unused_field
  final $Res Function(ResumeSectionsManagerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerStateCopyWithImpl<$Res>
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
    return 'ResumeSectionsManagerState.initial()';
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
            UnmodifiableListView<ResumeSection> newResumeSections)
        changeSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ResumeSectionsManagerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ChangeSuccessCopyWith<$Res> {
  factory _$ChangeSuccessCopyWith(
          _ChangeSuccess value, $Res Function(_ChangeSuccess) then) =
      __$ChangeSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<ResumeSection> newResumeSections});
}

/// @nodoc
class __$ChangeSuccessCopyWithImpl<$Res>
    extends _$ResumeSectionsManagerStateCopyWithImpl<$Res>
    implements _$ChangeSuccessCopyWith<$Res> {
  __$ChangeSuccessCopyWithImpl(
      _ChangeSuccess _value, $Res Function(_ChangeSuccess) _then)
      : super(_value, (v) => _then(v as _ChangeSuccess));

  @override
  _ChangeSuccess get _value => super._value as _ChangeSuccess;

  @override
  $Res call({
    Object? newResumeSections = freezed,
  }) {
    return _then(_ChangeSuccess(
      newResumeSections == freezed
          ? _value.newResumeSections
          : newResumeSections // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ResumeSection>,
    ));
  }
}

/// @nodoc

class _$_ChangeSuccess implements _ChangeSuccess {
  const _$_ChangeSuccess(this.newResumeSections);

  @override
  final UnmodifiableListView<ResumeSection> newResumeSections;

  @override
  String toString() {
    return 'ResumeSectionsManagerState.changeSuccess(newResumeSections: $newResumeSections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeSuccess &&
            const DeepCollectionEquality()
                .equals(other.newResumeSections, newResumeSections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newResumeSections));

  @JsonKey(ignore: true)
  @override
  _$ChangeSuccessCopyWith<_ChangeSuccess> get copyWith =>
      __$ChangeSuccessCopyWithImpl<_ChangeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            UnmodifiableListView<ResumeSection> newResumeSections)
        changeSuccess,
  }) {
    return changeSuccess(newResumeSections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
  }) {
    return changeSuccess?.call(newResumeSections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(UnmodifiableListView<ResumeSection> newResumeSections)?
        changeSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(newResumeSections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ChangeSuccess value) changeSuccess,
  }) {
    return changeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
  }) {
    return changeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ChangeSuccess value)? changeSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(this);
    }
    return orElse();
  }
}

abstract class _ChangeSuccess implements ResumeSectionsManagerState {
  const factory _ChangeSuccess(
      UnmodifiableListView<ResumeSection> newResumeSections) = _$_ChangeSuccess;

  UnmodifiableListView<ResumeSection> get newResumeSections;
  @JsonKey(ignore: true)
  _$ChangeSuccessCopyWith<_ChangeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
