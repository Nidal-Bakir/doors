// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_downloader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileDownloaderEventTearOff {
  const _$FileDownloaderEventTearOff();

  FileDownloaderFileDownloaded fileDownloaded(ParseFile file) {
    return FileDownloaderFileDownloaded(
      file,
    );
  }

  FileDownloaderCachedFileLoaded cachedFileLoaded(ParseFile file) {
    return FileDownloaderCachedFileLoaded(
      file,
    );
  }
}

/// @nodoc
const $FileDownloaderEvent = _$FileDownloaderEventTearOff();

/// @nodoc
mixin _$FileDownloaderEvent {
  ParseFile get file => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileDownloaded,
    required TResult Function(ParseFile file) cachedFileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderFileDownloaded value)
        fileDownloaded,
    required TResult Function(FileDownloaderCachedFileLoaded value)
        cachedFileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileDownloaderEventCopyWith<FileDownloaderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloaderEventCopyWith<$Res> {
  factory $FileDownloaderEventCopyWith(
          FileDownloaderEvent value, $Res Function(FileDownloaderEvent) then) =
      _$FileDownloaderEventCopyWithImpl<$Res>;
  $Res call({ParseFile file});
}

/// @nodoc
class _$FileDownloaderEventCopyWithImpl<$Res>
    implements $FileDownloaderEventCopyWith<$Res> {
  _$FileDownloaderEventCopyWithImpl(this._value, this._then);

  final FileDownloaderEvent _value;
  // ignore: unused_field
  final $Res Function(FileDownloaderEvent) _then;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc
abstract class $FileDownloaderFileDownloadedCopyWith<$Res>
    implements $FileDownloaderEventCopyWith<$Res> {
  factory $FileDownloaderFileDownloadedCopyWith(
          FileDownloaderFileDownloaded value,
          $Res Function(FileDownloaderFileDownloaded) then) =
      _$FileDownloaderFileDownloadedCopyWithImpl<$Res>;
  @override
  $Res call({ParseFile file});
}

/// @nodoc
class _$FileDownloaderFileDownloadedCopyWithImpl<$Res>
    extends _$FileDownloaderEventCopyWithImpl<$Res>
    implements $FileDownloaderFileDownloadedCopyWith<$Res> {
  _$FileDownloaderFileDownloadedCopyWithImpl(
      FileDownloaderFileDownloaded _value,
      $Res Function(FileDownloaderFileDownloaded) _then)
      : super(_value, (v) => _then(v as FileDownloaderFileDownloaded));

  @override
  FileDownloaderFileDownloaded get _value =>
      super._value as FileDownloaderFileDownloaded;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(FileDownloaderFileDownloaded(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc

class _$FileDownloaderFileDownloaded implements FileDownloaderFileDownloaded {
  const _$FileDownloaderFileDownloaded(this.file);

  @override
  final ParseFile file;

  @override
  String toString() {
    return 'FileDownloaderEvent.fileDownloaded(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileDownloaderFileDownloaded &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $FileDownloaderFileDownloadedCopyWith<FileDownloaderFileDownloaded>
      get copyWith => _$FileDownloaderFileDownloadedCopyWithImpl<
          FileDownloaderFileDownloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileDownloaded,
    required TResult Function(ParseFile file) cachedFileLoaded,
  }) {
    return fileDownloaded(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
  }) {
    return fileDownloaded?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
    required TResult orElse(),
  }) {
    if (fileDownloaded != null) {
      return fileDownloaded(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderFileDownloaded value)
        fileDownloaded,
    required TResult Function(FileDownloaderCachedFileLoaded value)
        cachedFileLoaded,
  }) {
    return fileDownloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
  }) {
    return fileDownloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
    required TResult orElse(),
  }) {
    if (fileDownloaded != null) {
      return fileDownloaded(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderFileDownloaded implements FileDownloaderEvent {
  const factory FileDownloaderFileDownloaded(ParseFile file) =
      _$FileDownloaderFileDownloaded;

  @override
  ParseFile get file;
  @override
  @JsonKey(ignore: true)
  $FileDownloaderFileDownloadedCopyWith<FileDownloaderFileDownloaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloaderCachedFileLoadedCopyWith<$Res>
    implements $FileDownloaderEventCopyWith<$Res> {
  factory $FileDownloaderCachedFileLoadedCopyWith(
          FileDownloaderCachedFileLoaded value,
          $Res Function(FileDownloaderCachedFileLoaded) then) =
      _$FileDownloaderCachedFileLoadedCopyWithImpl<$Res>;
  @override
  $Res call({ParseFile file});
}

/// @nodoc
class _$FileDownloaderCachedFileLoadedCopyWithImpl<$Res>
    extends _$FileDownloaderEventCopyWithImpl<$Res>
    implements $FileDownloaderCachedFileLoadedCopyWith<$Res> {
  _$FileDownloaderCachedFileLoadedCopyWithImpl(
      FileDownloaderCachedFileLoaded _value,
      $Res Function(FileDownloaderCachedFileLoaded) _then)
      : super(_value, (v) => _then(v as FileDownloaderCachedFileLoaded));

  @override
  FileDownloaderCachedFileLoaded get _value =>
      super._value as FileDownloaderCachedFileLoaded;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(FileDownloaderCachedFileLoaded(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc

class _$FileDownloaderCachedFileLoaded
    implements FileDownloaderCachedFileLoaded {
  const _$FileDownloaderCachedFileLoaded(this.file);

  @override
  final ParseFile file;

  @override
  String toString() {
    return 'FileDownloaderEvent.cachedFileLoaded(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileDownloaderCachedFileLoaded &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $FileDownloaderCachedFileLoadedCopyWith<FileDownloaderCachedFileLoaded>
      get copyWith => _$FileDownloaderCachedFileLoadedCopyWithImpl<
          FileDownloaderCachedFileLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileDownloaded,
    required TResult Function(ParseFile file) cachedFileLoaded,
  }) {
    return cachedFileLoaded(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
  }) {
    return cachedFileLoaded?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileDownloaded,
    TResult Function(ParseFile file)? cachedFileLoaded,
    required TResult orElse(),
  }) {
    if (cachedFileLoaded != null) {
      return cachedFileLoaded(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderFileDownloaded value)
        fileDownloaded,
    required TResult Function(FileDownloaderCachedFileLoaded value)
        cachedFileLoaded,
  }) {
    return cachedFileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
  }) {
    return cachedFileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderFileDownloaded value)? fileDownloaded,
    TResult Function(FileDownloaderCachedFileLoaded value)? cachedFileLoaded,
    required TResult orElse(),
  }) {
    if (cachedFileLoaded != null) {
      return cachedFileLoaded(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderCachedFileLoaded implements FileDownloaderEvent {
  const factory FileDownloaderCachedFileLoaded(ParseFile file) =
      _$FileDownloaderCachedFileLoaded;

  @override
  ParseFile get file;
  @override
  @JsonKey(ignore: true)
  $FileDownloaderCachedFileLoadedCopyWith<FileDownloaderCachedFileLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FileDownloaderStateTearOff {
  const _$FileDownloaderStateTearOff();

  FileDownloaderInitial initial() {
    return const FileDownloaderInitial();
  }

  FileDownloaderDownloadInProgress downloadInProgress(int progress, int total) {
    return FileDownloaderDownloadInProgress(
      progress,
      total,
    );
  }

  FileDownloaderDownloadSuccess downloadSuccess(ParseFile downloadFile) {
    return FileDownloaderDownloadSuccess(
      downloadFile,
    );
  }

  FileDownloaderDownloadFailure downloadFailure(ServerException error) {
    return FileDownloaderDownloadFailure(
      error,
    );
  }
}

/// @nodoc
const $FileDownloaderState = _$FileDownloaderStateTearOff();

/// @nodoc
mixin _$FileDownloaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) downloadInProgress,
    required TResult Function(ParseFile downloadFile) downloadSuccess,
    required TResult Function(ServerException error) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderInitial value) initial,
    required TResult Function(FileDownloaderDownloadInProgress value)
        downloadInProgress,
    required TResult Function(FileDownloaderDownloadSuccess value)
        downloadSuccess,
    required TResult Function(FileDownloaderDownloadFailure value)
        downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloaderStateCopyWith<$Res> {
  factory $FileDownloaderStateCopyWith(
          FileDownloaderState value, $Res Function(FileDownloaderState) then) =
      _$FileDownloaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileDownloaderStateCopyWithImpl<$Res>
    implements $FileDownloaderStateCopyWith<$Res> {
  _$FileDownloaderStateCopyWithImpl(this._value, this._then);

  final FileDownloaderState _value;
  // ignore: unused_field
  final $Res Function(FileDownloaderState) _then;
}

/// @nodoc
abstract class $FileDownloaderInitialCopyWith<$Res> {
  factory $FileDownloaderInitialCopyWith(FileDownloaderInitial value,
          $Res Function(FileDownloaderInitial) then) =
      _$FileDownloaderInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileDownloaderInitialCopyWithImpl<$Res>
    extends _$FileDownloaderStateCopyWithImpl<$Res>
    implements $FileDownloaderInitialCopyWith<$Res> {
  _$FileDownloaderInitialCopyWithImpl(
      FileDownloaderInitial _value, $Res Function(FileDownloaderInitial) _then)
      : super(_value, (v) => _then(v as FileDownloaderInitial));

  @override
  FileDownloaderInitial get _value => super._value as FileDownloaderInitial;
}

/// @nodoc

class _$FileDownloaderInitial implements FileDownloaderInitial {
  const _$FileDownloaderInitial();

  @override
  String toString() {
    return 'FileDownloaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FileDownloaderInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) downloadInProgress,
    required TResult Function(ParseFile downloadFile) downloadSuccess,
    required TResult Function(ServerException error) downloadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
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
    required TResult Function(FileDownloaderInitial value) initial,
    required TResult Function(FileDownloaderDownloadInProgress value)
        downloadInProgress,
    required TResult Function(FileDownloaderDownloadSuccess value)
        downloadSuccess,
    required TResult Function(FileDownloaderDownloadFailure value)
        downloadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderInitial implements FileDownloaderState {
  const factory FileDownloaderInitial() = _$FileDownloaderInitial;
}

/// @nodoc
abstract class $FileDownloaderDownloadInProgressCopyWith<$Res> {
  factory $FileDownloaderDownloadInProgressCopyWith(
          FileDownloaderDownloadInProgress value,
          $Res Function(FileDownloaderDownloadInProgress) then) =
      _$FileDownloaderDownloadInProgressCopyWithImpl<$Res>;
  $Res call({int progress, int total});
}

/// @nodoc
class _$FileDownloaderDownloadInProgressCopyWithImpl<$Res>
    extends _$FileDownloaderStateCopyWithImpl<$Res>
    implements $FileDownloaderDownloadInProgressCopyWith<$Res> {
  _$FileDownloaderDownloadInProgressCopyWithImpl(
      FileDownloaderDownloadInProgress _value,
      $Res Function(FileDownloaderDownloadInProgress) _then)
      : super(_value, (v) => _then(v as FileDownloaderDownloadInProgress));

  @override
  FileDownloaderDownloadInProgress get _value =>
      super._value as FileDownloaderDownloadInProgress;

  @override
  $Res call({
    Object? progress = freezed,
    Object? total = freezed,
  }) {
    return _then(FileDownloaderDownloadInProgress(
      progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FileDownloaderDownloadInProgress
    implements FileDownloaderDownloadInProgress {
  const _$FileDownloaderDownloadInProgress(this.progress, this.total);

  @override
  final int progress;
  @override
  final int total;

  @override
  String toString() {
    return 'FileDownloaderState.downloadInProgress(progress: $progress, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileDownloaderDownloadInProgress &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  $FileDownloaderDownloadInProgressCopyWith<FileDownloaderDownloadInProgress>
      get copyWith => _$FileDownloaderDownloadInProgressCopyWithImpl<
          FileDownloaderDownloadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) downloadInProgress,
    required TResult Function(ParseFile downloadFile) downloadSuccess,
    required TResult Function(ServerException error) downloadFailure,
  }) {
    return downloadInProgress(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
  }) {
    return downloadInProgress?.call(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(progress, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderInitial value) initial,
    required TResult Function(FileDownloaderDownloadInProgress value)
        downloadInProgress,
    required TResult Function(FileDownloaderDownloadSuccess value)
        downloadSuccess,
    required TResult Function(FileDownloaderDownloadFailure value)
        downloadFailure,
  }) {
    return downloadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
  }) {
    return downloadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderDownloadInProgress implements FileDownloaderState {
  const factory FileDownloaderDownloadInProgress(int progress, int total) =
      _$FileDownloaderDownloadInProgress;

  int get progress;
  int get total;
  @JsonKey(ignore: true)
  $FileDownloaderDownloadInProgressCopyWith<FileDownloaderDownloadInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloaderDownloadSuccessCopyWith<$Res> {
  factory $FileDownloaderDownloadSuccessCopyWith(
          FileDownloaderDownloadSuccess value,
          $Res Function(FileDownloaderDownloadSuccess) then) =
      _$FileDownloaderDownloadSuccessCopyWithImpl<$Res>;
  $Res call({ParseFile downloadFile});
}

/// @nodoc
class _$FileDownloaderDownloadSuccessCopyWithImpl<$Res>
    extends _$FileDownloaderStateCopyWithImpl<$Res>
    implements $FileDownloaderDownloadSuccessCopyWith<$Res> {
  _$FileDownloaderDownloadSuccessCopyWithImpl(
      FileDownloaderDownloadSuccess _value,
      $Res Function(FileDownloaderDownloadSuccess) _then)
      : super(_value, (v) => _then(v as FileDownloaderDownloadSuccess));

  @override
  FileDownloaderDownloadSuccess get _value =>
      super._value as FileDownloaderDownloadSuccess;

  @override
  $Res call({
    Object? downloadFile = freezed,
  }) {
    return _then(FileDownloaderDownloadSuccess(
      downloadFile == freezed
          ? _value.downloadFile
          : downloadFile // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc

class _$FileDownloaderDownloadSuccess implements FileDownloaderDownloadSuccess {
  const _$FileDownloaderDownloadSuccess(this.downloadFile);

  @override
  final ParseFile downloadFile;

  @override
  String toString() {
    return 'FileDownloaderState.downloadSuccess(downloadFile: $downloadFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileDownloaderDownloadSuccess &&
            const DeepCollectionEquality()
                .equals(other.downloadFile, downloadFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadFile));

  @JsonKey(ignore: true)
  @override
  $FileDownloaderDownloadSuccessCopyWith<FileDownloaderDownloadSuccess>
      get copyWith => _$FileDownloaderDownloadSuccessCopyWithImpl<
          FileDownloaderDownloadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) downloadInProgress,
    required TResult Function(ParseFile downloadFile) downloadSuccess,
    required TResult Function(ServerException error) downloadFailure,
  }) {
    return downloadSuccess(downloadFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
  }) {
    return downloadSuccess?.call(downloadFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(downloadFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderInitial value) initial,
    required TResult Function(FileDownloaderDownloadInProgress value)
        downloadInProgress,
    required TResult Function(FileDownloaderDownloadSuccess value)
        downloadSuccess,
    required TResult Function(FileDownloaderDownloadFailure value)
        downloadFailure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderDownloadSuccess implements FileDownloaderState {
  const factory FileDownloaderDownloadSuccess(ParseFile downloadFile) =
      _$FileDownloaderDownloadSuccess;

  ParseFile get downloadFile;
  @JsonKey(ignore: true)
  $FileDownloaderDownloadSuccessCopyWith<FileDownloaderDownloadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDownloaderDownloadFailureCopyWith<$Res> {
  factory $FileDownloaderDownloadFailureCopyWith(
          FileDownloaderDownloadFailure value,
          $Res Function(FileDownloaderDownloadFailure) then) =
      _$FileDownloaderDownloadFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$FileDownloaderDownloadFailureCopyWithImpl<$Res>
    extends _$FileDownloaderStateCopyWithImpl<$Res>
    implements $FileDownloaderDownloadFailureCopyWith<$Res> {
  _$FileDownloaderDownloadFailureCopyWithImpl(
      FileDownloaderDownloadFailure _value,
      $Res Function(FileDownloaderDownloadFailure) _then)
      : super(_value, (v) => _then(v as FileDownloaderDownloadFailure));

  @override
  FileDownloaderDownloadFailure get _value =>
      super._value as FileDownloaderDownloadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FileDownloaderDownloadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$FileDownloaderDownloadFailure implements FileDownloaderDownloadFailure {
  const _$FileDownloaderDownloadFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'FileDownloaderState.downloadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileDownloaderDownloadFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FileDownloaderDownloadFailureCopyWith<FileDownloaderDownloadFailure>
      get copyWith => _$FileDownloaderDownloadFailureCopyWithImpl<
          FileDownloaderDownloadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) downloadInProgress,
    required TResult Function(ParseFile downloadFile) downloadSuccess,
    required TResult Function(ServerException error) downloadFailure,
  }) {
    return downloadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
  }) {
    return downloadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? downloadInProgress,
    TResult Function(ParseFile downloadFile)? downloadSuccess,
    TResult Function(ServerException error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileDownloaderInitial value) initial,
    required TResult Function(FileDownloaderDownloadInProgress value)
        downloadInProgress,
    required TResult Function(FileDownloaderDownloadSuccess value)
        downloadSuccess,
    required TResult Function(FileDownloaderDownloadFailure value)
        downloadFailure,
  }) {
    return downloadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
  }) {
    return downloadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileDownloaderInitial value)? initial,
    TResult Function(FileDownloaderDownloadInProgress value)?
        downloadInProgress,
    TResult Function(FileDownloaderDownloadSuccess value)? downloadSuccess,
    TResult Function(FileDownloaderDownloadFailure value)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(this);
    }
    return orElse();
  }
}

abstract class FileDownloaderDownloadFailure implements FileDownloaderState {
  const factory FileDownloaderDownloadFailure(ServerException error) =
      _$FileDownloaderDownloadFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $FileDownloaderDownloadFailureCopyWith<FileDownloaderDownloadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
