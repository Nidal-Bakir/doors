// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_uploader_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FileUploaderEventTearOff {
  const _$FileUploaderEventTearOff();

  FileUploaderFileUploaded fileUploaded(ParseFile file) {
    return FileUploaderFileUploaded(
      file,
    );
  }

  FileUploaderSelectedFileCanceled selectedFileCanceled(File file) {
    return FileUploaderSelectedFileCanceled(
      file,
    );
  }

  FileUploaderFileManagerOpened fileManagerOpened(
      List<String> allowedExtensions, FileType fileType) {
    return FileUploaderFileManagerOpened(
      allowedExtensions,
      fileType,
    );
  }
}

/// @nodoc
const $FileUploaderEvent = _$FileUploaderEventTearOff();

/// @nodoc
mixin _$FileUploaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileUploaded,
    required TResult Function(File file) selectedFileCanceled,
    required TResult Function(List<String> allowedExtensions, FileType fileType)
        fileManagerOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderFileUploaded value) fileUploaded,
    required TResult Function(FileUploaderSelectedFileCanceled value)
        selectedFileCanceled,
    required TResult Function(FileUploaderFileManagerOpened value)
        fileManagerOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderEventCopyWith<$Res> {
  factory $FileUploaderEventCopyWith(
          FileUploaderEvent value, $Res Function(FileUploaderEvent) then) =
      _$FileUploaderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploaderEventCopyWithImpl<$Res>
    implements $FileUploaderEventCopyWith<$Res> {
  _$FileUploaderEventCopyWithImpl(this._value, this._then);

  final FileUploaderEvent _value;
  // ignore: unused_field
  final $Res Function(FileUploaderEvent) _then;
}

/// @nodoc
abstract class $FileUploaderFileUploadedCopyWith<$Res> {
  factory $FileUploaderFileUploadedCopyWith(FileUploaderFileUploaded value,
          $Res Function(FileUploaderFileUploaded) then) =
      _$FileUploaderFileUploadedCopyWithImpl<$Res>;
  $Res call({ParseFile file});
}

/// @nodoc
class _$FileUploaderFileUploadedCopyWithImpl<$Res>
    extends _$FileUploaderEventCopyWithImpl<$Res>
    implements $FileUploaderFileUploadedCopyWith<$Res> {
  _$FileUploaderFileUploadedCopyWithImpl(FileUploaderFileUploaded _value,
      $Res Function(FileUploaderFileUploaded) _then)
      : super(_value, (v) => _then(v as FileUploaderFileUploaded));

  @override
  FileUploaderFileUploaded get _value =>
      super._value as FileUploaderFileUploaded;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(FileUploaderFileUploaded(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc

class _$FileUploaderFileUploaded implements FileUploaderFileUploaded {
  const _$FileUploaderFileUploaded(this.file);

  @override
  final ParseFile file;

  @override
  String toString() {
    return 'FileUploaderEvent.fileUploaded(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderFileUploaded &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $FileUploaderFileUploadedCopyWith<FileUploaderFileUploaded> get copyWith =>
      _$FileUploaderFileUploadedCopyWithImpl<FileUploaderFileUploaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileUploaded,
    required TResult Function(File file) selectedFileCanceled,
    required TResult Function(List<String> allowedExtensions, FileType fileType)
        fileManagerOpened,
  }) {
    return fileUploaded(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
  }) {
    return fileUploaded?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderFileUploaded value) fileUploaded,
    required TResult Function(FileUploaderSelectedFileCanceled value)
        selectedFileCanceled,
    required TResult Function(FileUploaderFileManagerOpened value)
        fileManagerOpened,
  }) {
    return fileUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
  }) {
    return fileUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
    required TResult orElse(),
  }) {
    if (fileUploaded != null) {
      return fileUploaded(this);
    }
    return orElse();
  }
}

abstract class FileUploaderFileUploaded implements FileUploaderEvent {
  const factory FileUploaderFileUploaded(ParseFile file) =
      _$FileUploaderFileUploaded;

  ParseFile get file;
  @JsonKey(ignore: true)
  $FileUploaderFileUploadedCopyWith<FileUploaderFileUploaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderSelectedFileCanceledCopyWith<$Res> {
  factory $FileUploaderSelectedFileCanceledCopyWith(
          FileUploaderSelectedFileCanceled value,
          $Res Function(FileUploaderSelectedFileCanceled) then) =
      _$FileUploaderSelectedFileCanceledCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class _$FileUploaderSelectedFileCanceledCopyWithImpl<$Res>
    extends _$FileUploaderEventCopyWithImpl<$Res>
    implements $FileUploaderSelectedFileCanceledCopyWith<$Res> {
  _$FileUploaderSelectedFileCanceledCopyWithImpl(
      FileUploaderSelectedFileCanceled _value,
      $Res Function(FileUploaderSelectedFileCanceled) _then)
      : super(_value, (v) => _then(v as FileUploaderSelectedFileCanceled));

  @override
  FileUploaderSelectedFileCanceled get _value =>
      super._value as FileUploaderSelectedFileCanceled;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(FileUploaderSelectedFileCanceled(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$FileUploaderSelectedFileCanceled
    implements FileUploaderSelectedFileCanceled {
  const _$FileUploaderSelectedFileCanceled(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'FileUploaderEvent.selectedFileCanceled(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderSelectedFileCanceled &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  $FileUploaderSelectedFileCanceledCopyWith<FileUploaderSelectedFileCanceled>
      get copyWith => _$FileUploaderSelectedFileCanceledCopyWithImpl<
          FileUploaderSelectedFileCanceled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileUploaded,
    required TResult Function(File file) selectedFileCanceled,
    required TResult Function(List<String> allowedExtensions, FileType fileType)
        fileManagerOpened,
  }) {
    return selectedFileCanceled(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
  }) {
    return selectedFileCanceled?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
    required TResult orElse(),
  }) {
    if (selectedFileCanceled != null) {
      return selectedFileCanceled(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderFileUploaded value) fileUploaded,
    required TResult Function(FileUploaderSelectedFileCanceled value)
        selectedFileCanceled,
    required TResult Function(FileUploaderFileManagerOpened value)
        fileManagerOpened,
  }) {
    return selectedFileCanceled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
  }) {
    return selectedFileCanceled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
    required TResult orElse(),
  }) {
    if (selectedFileCanceled != null) {
      return selectedFileCanceled(this);
    }
    return orElse();
  }
}

abstract class FileUploaderSelectedFileCanceled implements FileUploaderEvent {
  const factory FileUploaderSelectedFileCanceled(File file) =
      _$FileUploaderSelectedFileCanceled;

  File get file;
  @JsonKey(ignore: true)
  $FileUploaderSelectedFileCanceledCopyWith<FileUploaderSelectedFileCanceled>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderFileManagerOpenedCopyWith<$Res> {
  factory $FileUploaderFileManagerOpenedCopyWith(
          FileUploaderFileManagerOpened value,
          $Res Function(FileUploaderFileManagerOpened) then) =
      _$FileUploaderFileManagerOpenedCopyWithImpl<$Res>;
  $Res call({List<String> allowedExtensions, FileType fileType});
}

/// @nodoc
class _$FileUploaderFileManagerOpenedCopyWithImpl<$Res>
    extends _$FileUploaderEventCopyWithImpl<$Res>
    implements $FileUploaderFileManagerOpenedCopyWith<$Res> {
  _$FileUploaderFileManagerOpenedCopyWithImpl(
      FileUploaderFileManagerOpened _value,
      $Res Function(FileUploaderFileManagerOpened) _then)
      : super(_value, (v) => _then(v as FileUploaderFileManagerOpened));

  @override
  FileUploaderFileManagerOpened get _value =>
      super._value as FileUploaderFileManagerOpened;

  @override
  $Res call({
    Object? allowedExtensions = freezed,
    Object? fileType = freezed,
  }) {
    return _then(FileUploaderFileManagerOpened(
      allowedExtensions == freezed
          ? _value.allowedExtensions
          : allowedExtensions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fileType == freezed
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
    ));
  }
}

/// @nodoc

class _$FileUploaderFileManagerOpened implements FileUploaderFileManagerOpened {
  const _$FileUploaderFileManagerOpened(this.allowedExtensions, this.fileType);

  @override
  final List<String> allowedExtensions;
  @override
  final FileType fileType;

  @override
  String toString() {
    return 'FileUploaderEvent.fileManagerOpened(allowedExtensions: $allowedExtensions, fileType: $fileType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderFileManagerOpened &&
            const DeepCollectionEquality()
                .equals(other.allowedExtensions, allowedExtensions) &&
            const DeepCollectionEquality().equals(other.fileType, fileType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(allowedExtensions),
      const DeepCollectionEquality().hash(fileType));

  @JsonKey(ignore: true)
  @override
  $FileUploaderFileManagerOpenedCopyWith<FileUploaderFileManagerOpened>
      get copyWith => _$FileUploaderFileManagerOpenedCopyWithImpl<
          FileUploaderFileManagerOpened>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ParseFile file) fileUploaded,
    required TResult Function(File file) selectedFileCanceled,
    required TResult Function(List<String> allowedExtensions, FileType fileType)
        fileManagerOpened,
  }) {
    return fileManagerOpened(allowedExtensions, fileType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
  }) {
    return fileManagerOpened?.call(allowedExtensions, fileType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ParseFile file)? fileUploaded,
    TResult Function(File file)? selectedFileCanceled,
    TResult Function(List<String> allowedExtensions, FileType fileType)?
        fileManagerOpened,
    required TResult orElse(),
  }) {
    if (fileManagerOpened != null) {
      return fileManagerOpened(allowedExtensions, fileType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderFileUploaded value) fileUploaded,
    required TResult Function(FileUploaderSelectedFileCanceled value)
        selectedFileCanceled,
    required TResult Function(FileUploaderFileManagerOpened value)
        fileManagerOpened,
  }) {
    return fileManagerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
  }) {
    return fileManagerOpened?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderFileUploaded value)? fileUploaded,
    TResult Function(FileUploaderSelectedFileCanceled value)?
        selectedFileCanceled,
    TResult Function(FileUploaderFileManagerOpened value)? fileManagerOpened,
    required TResult orElse(),
  }) {
    if (fileManagerOpened != null) {
      return fileManagerOpened(this);
    }
    return orElse();
  }
}

abstract class FileUploaderFileManagerOpened implements FileUploaderEvent {
  const factory FileUploaderFileManagerOpened(
          List<String> allowedExtensions, FileType fileType) =
      _$FileUploaderFileManagerOpened;

  List<String> get allowedExtensions;
  FileType get fileType;
  @JsonKey(ignore: true)
  $FileUploaderFileManagerOpenedCopyWith<FileUploaderFileManagerOpened>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FileUploaderStateTearOff {
  const _$FileUploaderStateTearOff();

  FileUploaderInitial initial() {
    return const FileUploaderInitial();
  }

  FileUploaderUploadInProgress uploadInProgress(int progress, int total) {
    return FileUploaderUploadInProgress(
      progress,
      total,
    );
  }

  FileUploaderUploadSuccess uploadSuccess(ParseFile uploadedFile) {
    return FileUploaderUploadSuccess(
      uploadedFile,
    );
  }

  FileUploaderUploadFailure uploadFailure(ServerException error) {
    return FileUploaderUploadFailure(
      error,
    );
  }

  FileUploaderFileSelectingFailure fileSelectingFailure(UserException error) {
    return FileUploaderFileSelectingFailure(
      error,
    );
  }

  FileUploaderFileSelectingSuccess fileSelectingSuccess(File? selectedFile) {
    return FileUploaderFileSelectingSuccess(
      selectedFile,
    );
  }
}

/// @nodoc
const $FileUploaderState = _$FileUploaderStateTearOff();

/// @nodoc
mixin _$FileUploaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderStateCopyWith<$Res> {
  factory $FileUploaderStateCopyWith(
          FileUploaderState value, $Res Function(FileUploaderState) then) =
      _$FileUploaderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderStateCopyWith<$Res> {
  _$FileUploaderStateCopyWithImpl(this._value, this._then);

  final FileUploaderState _value;
  // ignore: unused_field
  final $Res Function(FileUploaderState) _then;
}

/// @nodoc
abstract class $FileUploaderInitialCopyWith<$Res> {
  factory $FileUploaderInitialCopyWith(
          FileUploaderInitial value, $Res Function(FileUploaderInitial) then) =
      _$FileUploaderInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$FileUploaderInitialCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderInitialCopyWith<$Res> {
  _$FileUploaderInitialCopyWithImpl(
      FileUploaderInitial _value, $Res Function(FileUploaderInitial) _then)
      : super(_value, (v) => _then(v as FileUploaderInitial));

  @override
  FileUploaderInitial get _value => super._value as FileUploaderInitial;
}

/// @nodoc

class _$FileUploaderInitial implements FileUploaderInitial {
  const _$FileUploaderInitial();

  @override
  String toString() {
    return 'FileUploaderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FileUploaderInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
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
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FileUploaderInitial implements FileUploaderState {
  const factory FileUploaderInitial() = _$FileUploaderInitial;
}

/// @nodoc
abstract class $FileUploaderUploadInProgressCopyWith<$Res> {
  factory $FileUploaderUploadInProgressCopyWith(
          FileUploaderUploadInProgress value,
          $Res Function(FileUploaderUploadInProgress) then) =
      _$FileUploaderUploadInProgressCopyWithImpl<$Res>;
  $Res call({int progress, int total});
}

/// @nodoc
class _$FileUploaderUploadInProgressCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderUploadInProgressCopyWith<$Res> {
  _$FileUploaderUploadInProgressCopyWithImpl(
      FileUploaderUploadInProgress _value,
      $Res Function(FileUploaderUploadInProgress) _then)
      : super(_value, (v) => _then(v as FileUploaderUploadInProgress));

  @override
  FileUploaderUploadInProgress get _value =>
      super._value as FileUploaderUploadInProgress;

  @override
  $Res call({
    Object? progress = freezed,
    Object? total = freezed,
  }) {
    return _then(FileUploaderUploadInProgress(
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

class _$FileUploaderUploadInProgress implements FileUploaderUploadInProgress {
  const _$FileUploaderUploadInProgress(this.progress, this.total);

  @override
  final int progress;
  @override
  final int total;

  @override
  String toString() {
    return 'FileUploaderState.uploadInProgress(progress: $progress, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderUploadInProgress &&
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
  $FileUploaderUploadInProgressCopyWith<FileUploaderUploadInProgress>
      get copyWith => _$FileUploaderUploadInProgressCopyWithImpl<
          FileUploaderUploadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return uploadInProgress(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return uploadInProgress?.call(progress, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadInProgress != null) {
      return uploadInProgress(progress, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return uploadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return uploadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadInProgress != null) {
      return uploadInProgress(this);
    }
    return orElse();
  }
}

abstract class FileUploaderUploadInProgress implements FileUploaderState {
  const factory FileUploaderUploadInProgress(int progress, int total) =
      _$FileUploaderUploadInProgress;

  int get progress;
  int get total;
  @JsonKey(ignore: true)
  $FileUploaderUploadInProgressCopyWith<FileUploaderUploadInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderUploadSuccessCopyWith<$Res> {
  factory $FileUploaderUploadSuccessCopyWith(FileUploaderUploadSuccess value,
          $Res Function(FileUploaderUploadSuccess) then) =
      _$FileUploaderUploadSuccessCopyWithImpl<$Res>;
  $Res call({ParseFile uploadedFile});
}

/// @nodoc
class _$FileUploaderUploadSuccessCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderUploadSuccessCopyWith<$Res> {
  _$FileUploaderUploadSuccessCopyWithImpl(FileUploaderUploadSuccess _value,
      $Res Function(FileUploaderUploadSuccess) _then)
      : super(_value, (v) => _then(v as FileUploaderUploadSuccess));

  @override
  FileUploaderUploadSuccess get _value =>
      super._value as FileUploaderUploadSuccess;

  @override
  $Res call({
    Object? uploadedFile = freezed,
  }) {
    return _then(FileUploaderUploadSuccess(
      uploadedFile == freezed
          ? _value.uploadedFile
          : uploadedFile // ignore: cast_nullable_to_non_nullable
              as ParseFile,
    ));
  }
}

/// @nodoc

class _$FileUploaderUploadSuccess implements FileUploaderUploadSuccess {
  const _$FileUploaderUploadSuccess(this.uploadedFile);

  @override
  final ParseFile uploadedFile;

  @override
  String toString() {
    return 'FileUploaderState.uploadSuccess(uploadedFile: $uploadedFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderUploadSuccess &&
            const DeepCollectionEquality()
                .equals(other.uploadedFile, uploadedFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(uploadedFile));

  @JsonKey(ignore: true)
  @override
  $FileUploaderUploadSuccessCopyWith<FileUploaderUploadSuccess> get copyWith =>
      _$FileUploaderUploadSuccessCopyWithImpl<FileUploaderUploadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return uploadSuccess(uploadedFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return uploadSuccess?.call(uploadedFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(uploadedFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return uploadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return uploadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadSuccess != null) {
      return uploadSuccess(this);
    }
    return orElse();
  }
}

abstract class FileUploaderUploadSuccess implements FileUploaderState {
  const factory FileUploaderUploadSuccess(ParseFile uploadedFile) =
      _$FileUploaderUploadSuccess;

  ParseFile get uploadedFile;
  @JsonKey(ignore: true)
  $FileUploaderUploadSuccessCopyWith<FileUploaderUploadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderUploadFailureCopyWith<$Res> {
  factory $FileUploaderUploadFailureCopyWith(FileUploaderUploadFailure value,
          $Res Function(FileUploaderUploadFailure) then) =
      _$FileUploaderUploadFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$FileUploaderUploadFailureCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderUploadFailureCopyWith<$Res> {
  _$FileUploaderUploadFailureCopyWithImpl(FileUploaderUploadFailure _value,
      $Res Function(FileUploaderUploadFailure) _then)
      : super(_value, (v) => _then(v as FileUploaderUploadFailure));

  @override
  FileUploaderUploadFailure get _value =>
      super._value as FileUploaderUploadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FileUploaderUploadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$FileUploaderUploadFailure implements FileUploaderUploadFailure {
  const _$FileUploaderUploadFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'FileUploaderState.uploadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderUploadFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FileUploaderUploadFailureCopyWith<FileUploaderUploadFailure> get copyWith =>
      _$FileUploaderUploadFailureCopyWithImpl<FileUploaderUploadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return uploadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return uploadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return uploadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return uploadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (uploadFailure != null) {
      return uploadFailure(this);
    }
    return orElse();
  }
}

abstract class FileUploaderUploadFailure implements FileUploaderState {
  const factory FileUploaderUploadFailure(ServerException error) =
      _$FileUploaderUploadFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $FileUploaderUploadFailureCopyWith<FileUploaderUploadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderFileSelectingFailureCopyWith<$Res> {
  factory $FileUploaderFileSelectingFailureCopyWith(
          FileUploaderFileSelectingFailure value,
          $Res Function(FileUploaderFileSelectingFailure) then) =
      _$FileUploaderFileSelectingFailureCopyWithImpl<$Res>;
  $Res call({UserException error});
}

/// @nodoc
class _$FileUploaderFileSelectingFailureCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderFileSelectingFailureCopyWith<$Res> {
  _$FileUploaderFileSelectingFailureCopyWithImpl(
      FileUploaderFileSelectingFailure _value,
      $Res Function(FileUploaderFileSelectingFailure) _then)
      : super(_value, (v) => _then(v as FileUploaderFileSelectingFailure));

  @override
  FileUploaderFileSelectingFailure get _value =>
      super._value as FileUploaderFileSelectingFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FileUploaderFileSelectingFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UserException,
    ));
  }
}

/// @nodoc

class _$FileUploaderFileSelectingFailure
    implements FileUploaderFileSelectingFailure {
  const _$FileUploaderFileSelectingFailure(this.error);

  @override
  final UserException error;

  @override
  String toString() {
    return 'FileUploaderState.fileSelectingFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderFileSelectingFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $FileUploaderFileSelectingFailureCopyWith<FileUploaderFileSelectingFailure>
      get copyWith => _$FileUploaderFileSelectingFailureCopyWithImpl<
          FileUploaderFileSelectingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return fileSelectingFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return fileSelectingFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (fileSelectingFailure != null) {
      return fileSelectingFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return fileSelectingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return fileSelectingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (fileSelectingFailure != null) {
      return fileSelectingFailure(this);
    }
    return orElse();
  }
}

abstract class FileUploaderFileSelectingFailure implements FileUploaderState {
  const factory FileUploaderFileSelectingFailure(UserException error) =
      _$FileUploaderFileSelectingFailure;

  UserException get error;
  @JsonKey(ignore: true)
  $FileUploaderFileSelectingFailureCopyWith<FileUploaderFileSelectingFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileUploaderFileSelectingSuccessCopyWith<$Res> {
  factory $FileUploaderFileSelectingSuccessCopyWith(
          FileUploaderFileSelectingSuccess value,
          $Res Function(FileUploaderFileSelectingSuccess) then) =
      _$FileUploaderFileSelectingSuccessCopyWithImpl<$Res>;
  $Res call({File? selectedFile});
}

/// @nodoc
class _$FileUploaderFileSelectingSuccessCopyWithImpl<$Res>
    extends _$FileUploaderStateCopyWithImpl<$Res>
    implements $FileUploaderFileSelectingSuccessCopyWith<$Res> {
  _$FileUploaderFileSelectingSuccessCopyWithImpl(
      FileUploaderFileSelectingSuccess _value,
      $Res Function(FileUploaderFileSelectingSuccess) _then)
      : super(_value, (v) => _then(v as FileUploaderFileSelectingSuccess));

  @override
  FileUploaderFileSelectingSuccess get _value =>
      super._value as FileUploaderFileSelectingSuccess;

  @override
  $Res call({
    Object? selectedFile = freezed,
  }) {
    return _then(FileUploaderFileSelectingSuccess(
      selectedFile == freezed
          ? _value.selectedFile
          : selectedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$FileUploaderFileSelectingSuccess
    implements FileUploaderFileSelectingSuccess {
  const _$FileUploaderFileSelectingSuccess(this.selectedFile);

  @override
  final File? selectedFile;

  @override
  String toString() {
    return 'FileUploaderState.fileSelectingSuccess(selectedFile: $selectedFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileUploaderFileSelectingSuccess &&
            const DeepCollectionEquality()
                .equals(other.selectedFile, selectedFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedFile));

  @JsonKey(ignore: true)
  @override
  $FileUploaderFileSelectingSuccessCopyWith<FileUploaderFileSelectingSuccess>
      get copyWith => _$FileUploaderFileSelectingSuccessCopyWithImpl<
          FileUploaderFileSelectingSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int progress, int total) uploadInProgress,
    required TResult Function(ParseFile uploadedFile) uploadSuccess,
    required TResult Function(ServerException error) uploadFailure,
    required TResult Function(UserException error) fileSelectingFailure,
    required TResult Function(File? selectedFile) fileSelectingSuccess,
  }) {
    return fileSelectingSuccess(selectedFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
  }) {
    return fileSelectingSuccess?.call(selectedFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int progress, int total)? uploadInProgress,
    TResult Function(ParseFile uploadedFile)? uploadSuccess,
    TResult Function(ServerException error)? uploadFailure,
    TResult Function(UserException error)? fileSelectingFailure,
    TResult Function(File? selectedFile)? fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (fileSelectingSuccess != null) {
      return fileSelectingSuccess(selectedFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileUploaderInitial value) initial,
    required TResult Function(FileUploaderUploadInProgress value)
        uploadInProgress,
    required TResult Function(FileUploaderUploadSuccess value) uploadSuccess,
    required TResult Function(FileUploaderUploadFailure value) uploadFailure,
    required TResult Function(FileUploaderFileSelectingFailure value)
        fileSelectingFailure,
    required TResult Function(FileUploaderFileSelectingSuccess value)
        fileSelectingSuccess,
  }) {
    return fileSelectingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
  }) {
    return fileSelectingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileUploaderInitial value)? initial,
    TResult Function(FileUploaderUploadInProgress value)? uploadInProgress,
    TResult Function(FileUploaderUploadSuccess value)? uploadSuccess,
    TResult Function(FileUploaderUploadFailure value)? uploadFailure,
    TResult Function(FileUploaderFileSelectingFailure value)?
        fileSelectingFailure,
    TResult Function(FileUploaderFileSelectingSuccess value)?
        fileSelectingSuccess,
    required TResult orElse(),
  }) {
    if (fileSelectingSuccess != null) {
      return fileSelectingSuccess(this);
    }
    return orElse();
  }
}

abstract class FileUploaderFileSelectingSuccess implements FileUploaderState {
  const factory FileUploaderFileSelectingSuccess(File? selectedFile) =
      _$FileUploaderFileSelectingSuccess;

  File? get selectedFile;
  @JsonKey(ignore: true)
  $FileUploaderFileSelectingSuccessCopyWith<FileUploaderFileSelectingSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
