// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_saver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileSaverEventTearOff {
  const _$FileSaverEventTearOff();

  FileSaverFileSaved fileSaved(File file, AppFolder appFolder) {
    return FileSaverFileSaved(
      file,
      appFolder,
    );
  }
}

/// @nodoc
const $FileSaverEvent = _$FileSaverEventTearOff();

/// @nodoc
mixin _$FileSaverEvent {
  File get file => throw _privateConstructorUsedError;
  AppFolder get appFolder => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, AppFolder appFolder) fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File file, AppFolder appFolder)? fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, AppFolder appFolder)? fileSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverFileSaved value) fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverFileSaved value)? fileSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverFileSaved value)? fileSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileSaverEventCopyWith<FileSaverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSaverEventCopyWith<$Res> {
  factory $FileSaverEventCopyWith(
          FileSaverEvent value, $Res Function(FileSaverEvent) then) =
      _$FileSaverEventCopyWithImpl<$Res>;
  $Res call({File file, AppFolder appFolder});
}

/// @nodoc
class _$FileSaverEventCopyWithImpl<$Res>
    implements $FileSaverEventCopyWith<$Res> {
  _$FileSaverEventCopyWithImpl(this._value, this._then);

  final FileSaverEvent _value;
  // ignore: unused_field
  final $Res Function(FileSaverEvent) _then;

  @override
  $Res call({
    Object? file = freezed,
    Object? appFolder = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      appFolder: appFolder == freezed
          ? _value.appFolder
          : appFolder // ignore: cast_nullable_to_non_nullable
              as AppFolder,
    ));
  }
}

/// @nodoc
abstract class $FileSaverFileSavedCopyWith<$Res>
    implements $FileSaverEventCopyWith<$Res> {
  factory $FileSaverFileSavedCopyWith(
          FileSaverFileSaved value, $Res Function(FileSaverFileSaved) then) =
      _$FileSaverFileSavedCopyWithImpl<$Res>;
  @override
  $Res call({File file, AppFolder appFolder});
}

/// @nodoc
class _$FileSaverFileSavedCopyWithImpl<$Res>
    extends _$FileSaverEventCopyWithImpl<$Res>
    implements $FileSaverFileSavedCopyWith<$Res> {
  _$FileSaverFileSavedCopyWithImpl(
      FileSaverFileSaved _value, $Res Function(FileSaverFileSaved) _then)
      : super(_value, (v) => _then(v as FileSaverFileSaved));

  @override
  FileSaverFileSaved get _value => super._value as FileSaverFileSaved;

  @override
  $Res call({
    Object? file = freezed,
    Object? appFolder = freezed,
  }) {
    return _then(FileSaverFileSaved(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      appFolder == freezed
          ? _value.appFolder
          : appFolder // ignore: cast_nullable_to_non_nullable
              as AppFolder,
    ));
  }
}

/// @nodoc

class _$FileSaverFileSaved implements FileSaverFileSaved {
  const _$FileSaverFileSaved(this.file, this.appFolder);

  @override
  final File file;
  @override
  final AppFolder appFolder;

  @override
  String toString() {
    return 'FileSaverEvent.fileSaved(file: $file, appFolder: $appFolder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileSaverFileSaved &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.appFolder, appFolder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(appFolder));

  @JsonKey(ignore: true)
  @override
  $FileSaverFileSavedCopyWith<FileSaverFileSaved> get copyWith =>
      _$FileSaverFileSavedCopyWithImpl<FileSaverFileSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, AppFolder appFolder) fileSaved,
  }) {
    return fileSaved(file, appFolder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(File file, AppFolder appFolder)? fileSaved,
  }) {
    return fileSaved?.call(file, appFolder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, AppFolder appFolder)? fileSaved,
    required TResult orElse(),
  }) {
    if (fileSaved != null) {
      return fileSaved(file, appFolder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverFileSaved value) fileSaved,
  }) {
    return fileSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverFileSaved value)? fileSaved,
  }) {
    return fileSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverFileSaved value)? fileSaved,
    required TResult orElse(),
  }) {
    if (fileSaved != null) {
      return fileSaved(this);
    }
    return orElse();
  }
}

abstract class FileSaverFileSaved implements FileSaverEvent {
  const factory FileSaverFileSaved(File file, AppFolder appFolder) =
      _$FileSaverFileSaved;

  @override
  File get file;
  @override
  AppFolder get appFolder;
  @override
  @JsonKey(ignore: true)
  $FileSaverFileSavedCopyWith<FileSaverFileSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FileSaverStateTearOff {
  const _$FileSaverStateTearOff();

  FileSaverInitial initial() {
    return const FileSaverInitial();
  }

  FileSaverInProgress saveInProgress() {
    return const FileSaverInProgress();
  }

  FileSaverSaveSuccess saveSuccess(File savedFile) {
    return FileSaverSaveSuccess(
      savedFile,
    );
  }

  FileSaverSaveFailure saveFailure(UserException error) {
    return FileSaverSaveFailure(
      error,
    );
  }
}

/// @nodoc
const $FileSaverState = _$FileSaverStateTearOff();

/// @nodoc
mixin _$FileSaverState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saveInProgress,
    required TResult Function(File savedFile) saveSuccess,
    required TResult Function(UserException error) saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverInitial value) initial,
    required TResult Function(FileSaverInProgress value) saveInProgress,
    required TResult Function(FileSaverSaveSuccess value) saveSuccess,
    required TResult Function(FileSaverSaveFailure value) saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSaverStateCopyWith<$Res> {
  factory $FileSaverStateCopyWith(
          FileSaverState value, $Res Function(FileSaverState) then) =
      _$FileSaverStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileSaverStateCopyWithImpl<$Res>
    implements $FileSaverStateCopyWith<$Res> {
  _$FileSaverStateCopyWithImpl(this._value, this._then);

  final FileSaverState _value;
  // ignore: unused_field
  final $Res Function(FileSaverState) _then;
}

/// @nodoc
abstract class $FileSaverInitialCopyWith<$Res> {
  factory $FileSaverInitialCopyWith(
          FileSaverInitial value, $Res Function(FileSaverInitial) then) =
      _$FileSaverInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileSaverInitialCopyWithImpl<$Res>
    extends _$FileSaverStateCopyWithImpl<$Res>
    implements $FileSaverInitialCopyWith<$Res> {
  _$FileSaverInitialCopyWithImpl(
      FileSaverInitial _value, $Res Function(FileSaverInitial) _then)
      : super(_value, (v) => _then(v as FileSaverInitial));

  @override
  FileSaverInitial get _value => super._value as FileSaverInitial;
}

/// @nodoc

class _$FileSaverInitial implements FileSaverInitial {
  const _$FileSaverInitial();

  @override
  String toString() {
    return 'FileSaverState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FileSaverInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saveInProgress,
    required TResult Function(File savedFile) saveSuccess,
    required TResult Function(UserException error) saveFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
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
    required TResult Function(FileSaverInitial value) initial,
    required TResult Function(FileSaverInProgress value) saveInProgress,
    required TResult Function(FileSaverSaveSuccess value) saveSuccess,
    required TResult Function(FileSaverSaveFailure value) saveFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FileSaverInitial implements FileSaverState {
  const factory FileSaverInitial() = _$FileSaverInitial;
}

/// @nodoc
abstract class $FileSaverInProgressCopyWith<$Res> {
  factory $FileSaverInProgressCopyWith(
          FileSaverInProgress value, $Res Function(FileSaverInProgress) then) =
      _$FileSaverInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileSaverInProgressCopyWithImpl<$Res>
    extends _$FileSaverStateCopyWithImpl<$Res>
    implements $FileSaverInProgressCopyWith<$Res> {
  _$FileSaverInProgressCopyWithImpl(
      FileSaverInProgress _value, $Res Function(FileSaverInProgress) _then)
      : super(_value, (v) => _then(v as FileSaverInProgress));

  @override
  FileSaverInProgress get _value => super._value as FileSaverInProgress;
}

/// @nodoc

class _$FileSaverInProgress implements FileSaverInProgress {
  const _$FileSaverInProgress();

  @override
  String toString() {
    return 'FileSaverState.saveInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FileSaverInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saveInProgress,
    required TResult Function(File savedFile) saveSuccess,
    required TResult Function(UserException error) saveFailure,
  }) {
    return saveInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
  }) {
    return saveInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverInitial value) initial,
    required TResult Function(FileSaverInProgress value) saveInProgress,
    required TResult Function(FileSaverSaveSuccess value) saveSuccess,
    required TResult Function(FileSaverSaveFailure value) saveFailure,
  }) {
    return saveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
  }) {
    return saveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveInProgress != null) {
      return saveInProgress(this);
    }
    return orElse();
  }
}

abstract class FileSaverInProgress implements FileSaverState {
  const factory FileSaverInProgress() = _$FileSaverInProgress;
}

/// @nodoc
abstract class $FileSaverSaveSuccessCopyWith<$Res> {
  factory $FileSaverSaveSuccessCopyWith(FileSaverSaveSuccess value,
          $Res Function(FileSaverSaveSuccess) then) =
      _$FileSaverSaveSuccessCopyWithImpl<$Res>;
  $Res call({File savedFile});
}

/// @nodoc
class _$FileSaverSaveSuccessCopyWithImpl<$Res>
    extends _$FileSaverStateCopyWithImpl<$Res>
    implements $FileSaverSaveSuccessCopyWith<$Res> {
  _$FileSaverSaveSuccessCopyWithImpl(
      FileSaverSaveSuccess _value, $Res Function(FileSaverSaveSuccess) _then)
      : super(_value, (v) => _then(v as FileSaverSaveSuccess));

  @override
  FileSaverSaveSuccess get _value => super._value as FileSaverSaveSuccess;

  @override
  $Res call({
    Object? savedFile = freezed,
  }) {
    return _then(FileSaverSaveSuccess(
      savedFile == freezed
          ? _value.savedFile
          : savedFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$FileSaverSaveSuccess implements FileSaverSaveSuccess {
  const _$FileSaverSaveSuccess(this.savedFile);

  @override
  final File savedFile;

  @override
  String toString() {
    return 'FileSaverState.saveSuccess(savedFile: $savedFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileSaverSaveSuccess &&
            const DeepCollectionEquality().equals(other.savedFile, savedFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(savedFile));

  @JsonKey(ignore: true)
  @override
  $FileSaverSaveSuccessCopyWith<FileSaverSaveSuccess> get copyWith =>
      _$FileSaverSaveSuccessCopyWithImpl<FileSaverSaveSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saveInProgress,
    required TResult Function(File savedFile) saveSuccess,
    required TResult Function(UserException error) saveFailure,
  }) {
    return saveSuccess(savedFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
  }) {
    return saveSuccess?.call(savedFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(savedFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverInitial value) initial,
    required TResult Function(FileSaverInProgress value) saveInProgress,
    required TResult Function(FileSaverSaveSuccess value) saveSuccess,
    required TResult Function(FileSaverSaveFailure value) saveFailure,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class FileSaverSaveSuccess implements FileSaverState {
  const factory FileSaverSaveSuccess(File savedFile) = _$FileSaverSaveSuccess;

  File get savedFile;
  @JsonKey(ignore: true)
  $FileSaverSaveSuccessCopyWith<FileSaverSaveSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileSaverSaveFailureCopyWith<$Res> {
  factory $FileSaverSaveFailureCopyWith(FileSaverSaveFailure value,
          $Res Function(FileSaverSaveFailure) then) =
      _$FileSaverSaveFailureCopyWithImpl<$Res>;
  $Res call({UserException error});
}

/// @nodoc
class _$FileSaverSaveFailureCopyWithImpl<$Res>
    extends _$FileSaverStateCopyWithImpl<$Res>
    implements $FileSaverSaveFailureCopyWith<$Res> {
  _$FileSaverSaveFailureCopyWithImpl(
      FileSaverSaveFailure _value, $Res Function(FileSaverSaveFailure) _then)
      : super(_value, (v) => _then(v as FileSaverSaveFailure));

  @override
  FileSaverSaveFailure get _value => super._value as FileSaverSaveFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FileSaverSaveFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UserException,
    ));
  }
}

/// @nodoc

class _$FileSaverSaveFailure implements FileSaverSaveFailure {
  const _$FileSaverSaveFailure(this.error);

  @override
  final UserException error;

  @override
  String toString() {
    return 'FileSaverState.saveFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileSaverSaveFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FileSaverSaveFailureCopyWith<FileSaverSaveFailure> get copyWith =>
      _$FileSaverSaveFailureCopyWithImpl<FileSaverSaveFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() saveInProgress,
    required TResult Function(File savedFile) saveSuccess,
    required TResult Function(UserException error) saveFailure,
  }) {
    return saveFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
  }) {
    return saveFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? saveInProgress,
    TResult Function(File savedFile)? saveSuccess,
    TResult Function(UserException error)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileSaverInitial value) initial,
    required TResult Function(FileSaverInProgress value) saveInProgress,
    required TResult Function(FileSaverSaveSuccess value) saveSuccess,
    required TResult Function(FileSaverSaveFailure value) saveFailure,
  }) {
    return saveFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
  }) {
    return saveFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileSaverInitial value)? initial,
    TResult Function(FileSaverInProgress value)? saveInProgress,
    TResult Function(FileSaverSaveSuccess value)? saveSuccess,
    TResult Function(FileSaverSaveFailure value)? saveFailure,
    required TResult orElse(),
  }) {
    if (saveFailure != null) {
      return saveFailure(this);
    }
    return orElse();
  }
}

abstract class FileSaverSaveFailure implements FileSaverState {
  const factory FileSaverSaveFailure(UserException error) =
      _$FileSaverSaveFailure;

  UserException get error;
  @JsonKey(ignore: true)
  $FileSaverSaveFailureCopyWith<FileSaverSaveFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
