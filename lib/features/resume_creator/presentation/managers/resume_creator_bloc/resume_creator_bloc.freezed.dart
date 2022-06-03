// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resume_creator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResumeCreatorEventTearOff {
  const _$ResumeCreatorEventTearOff();

  ResumeCreatorCreated created(dynamic argument) {
    return ResumeCreatorCreated(
      argument,
    );
  }
}

/// @nodoc
const $ResumeCreatorEvent = _$ResumeCreatorEventTearOff();

/// @nodoc
mixin _$ResumeCreatorEvent {
  dynamic get argument => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic argument) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic argument)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic argument)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorCreated value) created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorCreated value)? created,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorCreated value)? created,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResumeCreatorEventCopyWith<ResumeCreatorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeCreatorEventCopyWith<$Res> {
  factory $ResumeCreatorEventCopyWith(
          ResumeCreatorEvent value, $Res Function(ResumeCreatorEvent) then) =
      _$ResumeCreatorEventCopyWithImpl<$Res>;
  $Res call({dynamic argument});
}

/// @nodoc
class _$ResumeCreatorEventCopyWithImpl<$Res>
    implements $ResumeCreatorEventCopyWith<$Res> {
  _$ResumeCreatorEventCopyWithImpl(this._value, this._then);

  final ResumeCreatorEvent _value;
  // ignore: unused_field
  final $Res Function(ResumeCreatorEvent) _then;

  @override
  $Res call({
    Object? argument = freezed,
  }) {
    return _then(_value.copyWith(
      argument: argument == freezed
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class $ResumeCreatorCreatedCopyWith<$Res>
    implements $ResumeCreatorEventCopyWith<$Res> {
  factory $ResumeCreatorCreatedCopyWith(ResumeCreatorCreated value,
          $Res Function(ResumeCreatorCreated) then) =
      _$ResumeCreatorCreatedCopyWithImpl<$Res>;
  @override
  $Res call({dynamic argument});
}

/// @nodoc
class _$ResumeCreatorCreatedCopyWithImpl<$Res>
    extends _$ResumeCreatorEventCopyWithImpl<$Res>
    implements $ResumeCreatorCreatedCopyWith<$Res> {
  _$ResumeCreatorCreatedCopyWithImpl(
      ResumeCreatorCreated _value, $Res Function(ResumeCreatorCreated) _then)
      : super(_value, (v) => _then(v as ResumeCreatorCreated));

  @override
  ResumeCreatorCreated get _value => super._value as ResumeCreatorCreated;

  @override
  $Res call({
    Object? argument = freezed,
  }) {
    return _then(ResumeCreatorCreated(
      argument == freezed
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ResumeCreatorCreated implements ResumeCreatorCreated {
  const _$ResumeCreatorCreated(this.argument);

  @override
  final dynamic argument;

  @override
  String toString() {
    return 'ResumeCreatorEvent.created(argument: $argument)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeCreatorCreated &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(argument));

  @JsonKey(ignore: true)
  @override
  $ResumeCreatorCreatedCopyWith<ResumeCreatorCreated> get copyWith =>
      _$ResumeCreatorCreatedCopyWithImpl<ResumeCreatorCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic argument) created,
  }) {
    return created(argument);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(dynamic argument)? created,
  }) {
    return created?.call(argument);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic argument)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(argument);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorCreated value) created,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorCreated value)? created,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorCreated value)? created,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class ResumeCreatorCreated implements ResumeCreatorEvent {
  const factory ResumeCreatorCreated(dynamic argument) = _$ResumeCreatorCreated;

  @override
  dynamic get argument;
  @override
  @JsonKey(ignore: true)
  $ResumeCreatorCreatedCopyWith<ResumeCreatorCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ResumeCreatorStateTearOff {
  const _$ResumeCreatorStateTearOff();

  ResumeCreatorInitial initial() {
    return const ResumeCreatorInitial();
  }

  ResumeCreatorCreationInProgress creationInProgress() {
    return const ResumeCreatorCreationInProgress();
  }

  ResumeCreatorCreationSuccess creationSuccess(File createdResumePdfFile) {
    return ResumeCreatorCreationSuccess(
      createdResumePdfFile,
    );
  }

  ResumeCreatorCreationFailure creationFailure(UserException error) {
    return ResumeCreatorCreationFailure(
      error,
    );
  }
}

/// @nodoc
const $ResumeCreatorState = _$ResumeCreatorStateTearOff();

/// @nodoc
mixin _$ResumeCreatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creationInProgress,
    required TResult Function(File createdResumePdfFile) creationSuccess,
    required TResult Function(UserException error) creationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorInitial value) initial,
    required TResult Function(ResumeCreatorCreationInProgress value)
        creationInProgress,
    required TResult Function(ResumeCreatorCreationSuccess value)
        creationSuccess,
    required TResult Function(ResumeCreatorCreationFailure value)
        creationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeCreatorStateCopyWith<$Res> {
  factory $ResumeCreatorStateCopyWith(
          ResumeCreatorState value, $Res Function(ResumeCreatorState) then) =
      _$ResumeCreatorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeCreatorStateCopyWithImpl<$Res>
    implements $ResumeCreatorStateCopyWith<$Res> {
  _$ResumeCreatorStateCopyWithImpl(this._value, this._then);

  final ResumeCreatorState _value;
  // ignore: unused_field
  final $Res Function(ResumeCreatorState) _then;
}

/// @nodoc
abstract class $ResumeCreatorInitialCopyWith<$Res> {
  factory $ResumeCreatorInitialCopyWith(ResumeCreatorInitial value,
          $Res Function(ResumeCreatorInitial) then) =
      _$ResumeCreatorInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeCreatorInitialCopyWithImpl<$Res>
    extends _$ResumeCreatorStateCopyWithImpl<$Res>
    implements $ResumeCreatorInitialCopyWith<$Res> {
  _$ResumeCreatorInitialCopyWithImpl(
      ResumeCreatorInitial _value, $Res Function(ResumeCreatorInitial) _then)
      : super(_value, (v) => _then(v as ResumeCreatorInitial));

  @override
  ResumeCreatorInitial get _value => super._value as ResumeCreatorInitial;
}

/// @nodoc

class _$ResumeCreatorInitial implements ResumeCreatorInitial {
  const _$ResumeCreatorInitial();

  @override
  String toString() {
    return 'ResumeCreatorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResumeCreatorInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creationInProgress,
    required TResult Function(File createdResumePdfFile) creationSuccess,
    required TResult Function(UserException error) creationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
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
    required TResult Function(ResumeCreatorInitial value) initial,
    required TResult Function(ResumeCreatorCreationInProgress value)
        creationInProgress,
    required TResult Function(ResumeCreatorCreationSuccess value)
        creationSuccess,
    required TResult Function(ResumeCreatorCreationFailure value)
        creationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ResumeCreatorInitial implements ResumeCreatorState {
  const factory ResumeCreatorInitial() = _$ResumeCreatorInitial;
}

/// @nodoc
abstract class $ResumeCreatorCreationInProgressCopyWith<$Res> {
  factory $ResumeCreatorCreationInProgressCopyWith(
          ResumeCreatorCreationInProgress value,
          $Res Function(ResumeCreatorCreationInProgress) then) =
      _$ResumeCreatorCreationInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResumeCreatorCreationInProgressCopyWithImpl<$Res>
    extends _$ResumeCreatorStateCopyWithImpl<$Res>
    implements $ResumeCreatorCreationInProgressCopyWith<$Res> {
  _$ResumeCreatorCreationInProgressCopyWithImpl(
      ResumeCreatorCreationInProgress _value,
      $Res Function(ResumeCreatorCreationInProgress) _then)
      : super(_value, (v) => _then(v as ResumeCreatorCreationInProgress));

  @override
  ResumeCreatorCreationInProgress get _value =>
      super._value as ResumeCreatorCreationInProgress;
}

/// @nodoc

class _$ResumeCreatorCreationInProgress
    implements ResumeCreatorCreationInProgress {
  const _$ResumeCreatorCreationInProgress();

  @override
  String toString() {
    return 'ResumeCreatorState.creationInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeCreatorCreationInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creationInProgress,
    required TResult Function(File createdResumePdfFile) creationSuccess,
    required TResult Function(UserException error) creationFailure,
  }) {
    return creationInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
  }) {
    return creationInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationInProgress != null) {
      return creationInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorInitial value) initial,
    required TResult Function(ResumeCreatorCreationInProgress value)
        creationInProgress,
    required TResult Function(ResumeCreatorCreationSuccess value)
        creationSuccess,
    required TResult Function(ResumeCreatorCreationFailure value)
        creationFailure,
  }) {
    return creationInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
  }) {
    return creationInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationInProgress != null) {
      return creationInProgress(this);
    }
    return orElse();
  }
}

abstract class ResumeCreatorCreationInProgress implements ResumeCreatorState {
  const factory ResumeCreatorCreationInProgress() =
      _$ResumeCreatorCreationInProgress;
}

/// @nodoc
abstract class $ResumeCreatorCreationSuccessCopyWith<$Res> {
  factory $ResumeCreatorCreationSuccessCopyWith(
          ResumeCreatorCreationSuccess value,
          $Res Function(ResumeCreatorCreationSuccess) then) =
      _$ResumeCreatorCreationSuccessCopyWithImpl<$Res>;
  $Res call({File createdResumePdfFile});
}

/// @nodoc
class _$ResumeCreatorCreationSuccessCopyWithImpl<$Res>
    extends _$ResumeCreatorStateCopyWithImpl<$Res>
    implements $ResumeCreatorCreationSuccessCopyWith<$Res> {
  _$ResumeCreatorCreationSuccessCopyWithImpl(
      ResumeCreatorCreationSuccess _value,
      $Res Function(ResumeCreatorCreationSuccess) _then)
      : super(_value, (v) => _then(v as ResumeCreatorCreationSuccess));

  @override
  ResumeCreatorCreationSuccess get _value =>
      super._value as ResumeCreatorCreationSuccess;

  @override
  $Res call({
    Object? createdResumePdfFile = freezed,
  }) {
    return _then(ResumeCreatorCreationSuccess(
      createdResumePdfFile == freezed
          ? _value.createdResumePdfFile
          : createdResumePdfFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$ResumeCreatorCreationSuccess implements ResumeCreatorCreationSuccess {
  const _$ResumeCreatorCreationSuccess(this.createdResumePdfFile);

  @override
  final File createdResumePdfFile;

  @override
  String toString() {
    return 'ResumeCreatorState.creationSuccess(createdResumePdfFile: $createdResumePdfFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeCreatorCreationSuccess &&
            const DeepCollectionEquality()
                .equals(other.createdResumePdfFile, createdResumePdfFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(createdResumePdfFile));

  @JsonKey(ignore: true)
  @override
  $ResumeCreatorCreationSuccessCopyWith<ResumeCreatorCreationSuccess>
      get copyWith => _$ResumeCreatorCreationSuccessCopyWithImpl<
          ResumeCreatorCreationSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creationInProgress,
    required TResult Function(File createdResumePdfFile) creationSuccess,
    required TResult Function(UserException error) creationFailure,
  }) {
    return creationSuccess(createdResumePdfFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
  }) {
    return creationSuccess?.call(createdResumePdfFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationSuccess != null) {
      return creationSuccess(createdResumePdfFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorInitial value) initial,
    required TResult Function(ResumeCreatorCreationInProgress value)
        creationInProgress,
    required TResult Function(ResumeCreatorCreationSuccess value)
        creationSuccess,
    required TResult Function(ResumeCreatorCreationFailure value)
        creationFailure,
  }) {
    return creationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
  }) {
    return creationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationSuccess != null) {
      return creationSuccess(this);
    }
    return orElse();
  }
}

abstract class ResumeCreatorCreationSuccess implements ResumeCreatorState {
  const factory ResumeCreatorCreationSuccess(File createdResumePdfFile) =
      _$ResumeCreatorCreationSuccess;

  File get createdResumePdfFile;
  @JsonKey(ignore: true)
  $ResumeCreatorCreationSuccessCopyWith<ResumeCreatorCreationSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResumeCreatorCreationFailureCopyWith<$Res> {
  factory $ResumeCreatorCreationFailureCopyWith(
          ResumeCreatorCreationFailure value,
          $Res Function(ResumeCreatorCreationFailure) then) =
      _$ResumeCreatorCreationFailureCopyWithImpl<$Res>;
  $Res call({UserException error});
}

/// @nodoc
class _$ResumeCreatorCreationFailureCopyWithImpl<$Res>
    extends _$ResumeCreatorStateCopyWithImpl<$Res>
    implements $ResumeCreatorCreationFailureCopyWith<$Res> {
  _$ResumeCreatorCreationFailureCopyWithImpl(
      ResumeCreatorCreationFailure _value,
      $Res Function(ResumeCreatorCreationFailure) _then)
      : super(_value, (v) => _then(v as ResumeCreatorCreationFailure));

  @override
  ResumeCreatorCreationFailure get _value =>
      super._value as ResumeCreatorCreationFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ResumeCreatorCreationFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UserException,
    ));
  }
}

/// @nodoc

class _$ResumeCreatorCreationFailure implements ResumeCreatorCreationFailure {
  const _$ResumeCreatorCreationFailure(this.error);

  @override
  final UserException error;

  @override
  String toString() {
    return 'ResumeCreatorState.creationFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResumeCreatorCreationFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ResumeCreatorCreationFailureCopyWith<ResumeCreatorCreationFailure>
      get copyWith => _$ResumeCreatorCreationFailureCopyWithImpl<
          ResumeCreatorCreationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creationInProgress,
    required TResult Function(File createdResumePdfFile) creationSuccess,
    required TResult Function(UserException error) creationFailure,
  }) {
    return creationFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
  }) {
    return creationFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creationInProgress,
    TResult Function(File createdResumePdfFile)? creationSuccess,
    TResult Function(UserException error)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationFailure != null) {
      return creationFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResumeCreatorInitial value) initial,
    required TResult Function(ResumeCreatorCreationInProgress value)
        creationInProgress,
    required TResult Function(ResumeCreatorCreationSuccess value)
        creationSuccess,
    required TResult Function(ResumeCreatorCreationFailure value)
        creationFailure,
  }) {
    return creationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
  }) {
    return creationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResumeCreatorInitial value)? initial,
    TResult Function(ResumeCreatorCreationInProgress value)? creationInProgress,
    TResult Function(ResumeCreatorCreationSuccess value)? creationSuccess,
    TResult Function(ResumeCreatorCreationFailure value)? creationFailure,
    required TResult orElse(),
  }) {
    if (creationFailure != null) {
      return creationFailure(this);
    }
    return orElse();
  }
}

abstract class ResumeCreatorCreationFailure implements ResumeCreatorState {
  const factory ResumeCreatorCreationFailure(UserException error) =
      _$ResumeCreatorCreationFailure;

  UserException get error;
  @JsonKey(ignore: true)
  $ResumeCreatorCreationFailureCopyWith<ResumeCreatorCreationFailure>
      get copyWith => throw _privateConstructorUsedError;
}
