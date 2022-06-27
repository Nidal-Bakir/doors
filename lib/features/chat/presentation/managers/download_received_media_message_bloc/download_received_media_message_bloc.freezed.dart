// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_received_media_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DownloadReceivedMediaMessageEventTearOff {
  const _$DownloadReceivedMediaMessageEventTearOff();

  DownloadReceivedMediaMessageDownloaded downloaded() {
    return const DownloadReceivedMediaMessageDownloaded();
  }
}

/// @nodoc
const $DownloadReceivedMediaMessageEvent =
    _$DownloadReceivedMediaMessageEventTearOff();

/// @nodoc
mixin _$DownloadReceivedMediaMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageDownloaded value)
        downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageDownloaded value)? downloaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageDownloaded value)? downloaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageEventCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageEventCopyWith(
          DownloadReceivedMediaMessageEvent value,
          $Res Function(DownloadReceivedMediaMessageEvent) then) =
      _$DownloadReceivedMediaMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadReceivedMediaMessageEventCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageEventCopyWith<$Res> {
  _$DownloadReceivedMediaMessageEventCopyWithImpl(this._value, this._then);

  final DownloadReceivedMediaMessageEvent _value;
  // ignore: unused_field
  final $Res Function(DownloadReceivedMediaMessageEvent) _then;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageDownloadedCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageDownloadedCopyWith(
          DownloadReceivedMediaMessageDownloaded value,
          $Res Function(DownloadReceivedMediaMessageDownloaded) then) =
      _$DownloadReceivedMediaMessageDownloadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadReceivedMediaMessageDownloadedCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageEventCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageDownloadedCopyWith<$Res> {
  _$DownloadReceivedMediaMessageDownloadedCopyWithImpl(
      DownloadReceivedMediaMessageDownloaded _value,
      $Res Function(DownloadReceivedMediaMessageDownloaded) _then)
      : super(
            _value, (v) => _then(v as DownloadReceivedMediaMessageDownloaded));

  @override
  DownloadReceivedMediaMessageDownloaded get _value =>
      super._value as DownloadReceivedMediaMessageDownloaded;
}

/// @nodoc

class _$DownloadReceivedMediaMessageDownloaded
    implements DownloadReceivedMediaMessageDownloaded {
  const _$DownloadReceivedMediaMessageDownloaded();

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageEvent.downloaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageDownloaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() downloaded,
  }) {
    return downloaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? downloaded,
  }) {
    return downloaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageDownloaded value)
        downloaded,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageDownloaded value)? downloaded,
  }) {
    return downloaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageDownloaded value)? downloaded,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageDownloaded
    implements DownloadReceivedMediaMessageEvent {
  const factory DownloadReceivedMediaMessageDownloaded() =
      _$DownloadReceivedMediaMessageDownloaded;
}

/// @nodoc
class _$DownloadReceivedMediaMessageStateTearOff {
  const _$DownloadReceivedMediaMessageStateTearOff();

  DownloadReceivedMediaMessageInitial initial(LocalChatMessage mediaMessage) {
    return DownloadReceivedMediaMessageInitial(
      mediaMessage,
    );
  }

  DownloadReceivedMediaMessageInProgress inProgress() {
    return const DownloadReceivedMediaMessageInProgress();
  }

  DownloadReceivedMediaMessageDownloadInProgress downloadInProgress(
      Tuple2<int, int> downloadProgress) {
    return DownloadReceivedMediaMessageDownloadInProgress(
      downloadProgress,
    );
  }

  DownloadReceivedMediaMessageDownloadSuccess downloadSuccess(
      LocalChatMessage mediaMessage) {
    return DownloadReceivedMediaMessageDownloadSuccess(
      mediaMessage,
    );
  }

  DownloadReceivedMediaMessageDownloadFailure downloadFailure(
      ExceptionBase error) {
    return DownloadReceivedMediaMessageDownloadFailure(
      error,
    );
  }
}

/// @nodoc
const $DownloadReceivedMediaMessageState =
    _$DownloadReceivedMediaMessageStateTearOff();

/// @nodoc
mixin _$DownloadReceivedMediaMessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageStateCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageStateCopyWith(
          DownloadReceivedMediaMessageState value,
          $Res Function(DownloadReceivedMediaMessageState) then) =
      _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageStateCopyWith<$Res> {
  _$DownloadReceivedMediaMessageStateCopyWithImpl(this._value, this._then);

  final DownloadReceivedMediaMessageState _value;
  // ignore: unused_field
  final $Res Function(DownloadReceivedMediaMessageState) _then;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageInitialCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageInitialCopyWith(
          DownloadReceivedMediaMessageInitial value,
          $Res Function(DownloadReceivedMediaMessageInitial) then) =
      _$DownloadReceivedMediaMessageInitialCopyWithImpl<$Res>;
  $Res call({LocalChatMessage mediaMessage});
}

/// @nodoc
class _$DownloadReceivedMediaMessageInitialCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageInitialCopyWith<$Res> {
  _$DownloadReceivedMediaMessageInitialCopyWithImpl(
      DownloadReceivedMediaMessageInitial _value,
      $Res Function(DownloadReceivedMediaMessageInitial) _then)
      : super(_value, (v) => _then(v as DownloadReceivedMediaMessageInitial));

  @override
  DownloadReceivedMediaMessageInitial get _value =>
      super._value as DownloadReceivedMediaMessageInitial;

  @override
  $Res call({
    Object? mediaMessage = freezed,
  }) {
    return _then(DownloadReceivedMediaMessageInitial(
      mediaMessage == freezed
          ? _value.mediaMessage
          : mediaMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$DownloadReceivedMediaMessageInitial
    implements DownloadReceivedMediaMessageInitial {
  const _$DownloadReceivedMediaMessageInitial(this.mediaMessage);

  @override
  final LocalChatMessage mediaMessage;

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageState.initial(mediaMessage: $mediaMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageInitial &&
            const DeepCollectionEquality()
                .equals(other.mediaMessage, mediaMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mediaMessage));

  @JsonKey(ignore: true)
  @override
  $DownloadReceivedMediaMessageInitialCopyWith<
          DownloadReceivedMediaMessageInitial>
      get copyWith => _$DownloadReceivedMediaMessageInitialCopyWithImpl<
          DownloadReceivedMediaMessageInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) {
    return initial(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) {
    return initial?.call(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(mediaMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageInitial
    implements DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageInitial(
      LocalChatMessage mediaMessage) = _$DownloadReceivedMediaMessageInitial;

  LocalChatMessage get mediaMessage;
  @JsonKey(ignore: true)
  $DownloadReceivedMediaMessageInitialCopyWith<
          DownloadReceivedMediaMessageInitial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageInProgressCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageInProgressCopyWith(
          DownloadReceivedMediaMessageInProgress value,
          $Res Function(DownloadReceivedMediaMessageInProgress) then) =
      _$DownloadReceivedMediaMessageInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadReceivedMediaMessageInProgressCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageInProgressCopyWith<$Res> {
  _$DownloadReceivedMediaMessageInProgressCopyWithImpl(
      DownloadReceivedMediaMessageInProgress _value,
      $Res Function(DownloadReceivedMediaMessageInProgress) _then)
      : super(
            _value, (v) => _then(v as DownloadReceivedMediaMessageInProgress));

  @override
  DownloadReceivedMediaMessageInProgress get _value =>
      super._value as DownloadReceivedMediaMessageInProgress;
}

/// @nodoc

class _$DownloadReceivedMediaMessageInProgress
    implements DownloadReceivedMediaMessageInProgress {
  const _$DownloadReceivedMediaMessageInProgress();

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageInProgress
    implements DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageInProgress() =
      _$DownloadReceivedMediaMessageInProgress;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageDownloadInProgressCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageDownloadInProgressCopyWith(
          DownloadReceivedMediaMessageDownloadInProgress value,
          $Res Function(DownloadReceivedMediaMessageDownloadInProgress) then) =
      _$DownloadReceivedMediaMessageDownloadInProgressCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> downloadProgress});
}

/// @nodoc
class _$DownloadReceivedMediaMessageDownloadInProgressCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageDownloadInProgressCopyWith<$Res> {
  _$DownloadReceivedMediaMessageDownloadInProgressCopyWithImpl(
      DownloadReceivedMediaMessageDownloadInProgress _value,
      $Res Function(DownloadReceivedMediaMessageDownloadInProgress) _then)
      : super(_value,
            (v) => _then(v as DownloadReceivedMediaMessageDownloadInProgress));

  @override
  DownloadReceivedMediaMessageDownloadInProgress get _value =>
      super._value as DownloadReceivedMediaMessageDownloadInProgress;

  @override
  $Res call({
    Object? downloadProgress = freezed,
  }) {
    return _then(DownloadReceivedMediaMessageDownloadInProgress(
      downloadProgress == freezed
          ? _value.downloadProgress
          : downloadProgress // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }
}

/// @nodoc

class _$DownloadReceivedMediaMessageDownloadInProgress
    implements DownloadReceivedMediaMessageDownloadInProgress {
  const _$DownloadReceivedMediaMessageDownloadInProgress(this.downloadProgress);

  @override
  final Tuple2<int, int> downloadProgress;

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageState.downloadInProgress(downloadProgress: $downloadProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageDownloadInProgress &&
            const DeepCollectionEquality()
                .equals(other.downloadProgress, downloadProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(downloadProgress));

  @JsonKey(ignore: true)
  @override
  $DownloadReceivedMediaMessageDownloadInProgressCopyWith<
          DownloadReceivedMediaMessageDownloadInProgress>
      get copyWith =>
          _$DownloadReceivedMediaMessageDownloadInProgressCopyWithImpl<
              DownloadReceivedMediaMessageDownloadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) {
    return downloadInProgress(downloadProgress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) {
    return downloadInProgress?.call(downloadProgress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(downloadProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) {
    return downloadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) {
    return downloadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadInProgress != null) {
      return downloadInProgress(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageDownloadInProgress
    implements DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageDownloadInProgress(
          Tuple2<int, int> downloadProgress) =
      _$DownloadReceivedMediaMessageDownloadInProgress;

  Tuple2<int, int> get downloadProgress;
  @JsonKey(ignore: true)
  $DownloadReceivedMediaMessageDownloadInProgressCopyWith<
          DownloadReceivedMediaMessageDownloadInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageDownloadSuccessCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageDownloadSuccessCopyWith(
          DownloadReceivedMediaMessageDownloadSuccess value,
          $Res Function(DownloadReceivedMediaMessageDownloadSuccess) then) =
      _$DownloadReceivedMediaMessageDownloadSuccessCopyWithImpl<$Res>;
  $Res call({LocalChatMessage mediaMessage});
}

/// @nodoc
class _$DownloadReceivedMediaMessageDownloadSuccessCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageDownloadSuccessCopyWith<$Res> {
  _$DownloadReceivedMediaMessageDownloadSuccessCopyWithImpl(
      DownloadReceivedMediaMessageDownloadSuccess _value,
      $Res Function(DownloadReceivedMediaMessageDownloadSuccess) _then)
      : super(_value,
            (v) => _then(v as DownloadReceivedMediaMessageDownloadSuccess));

  @override
  DownloadReceivedMediaMessageDownloadSuccess get _value =>
      super._value as DownloadReceivedMediaMessageDownloadSuccess;

  @override
  $Res call({
    Object? mediaMessage = freezed,
  }) {
    return _then(DownloadReceivedMediaMessageDownloadSuccess(
      mediaMessage == freezed
          ? _value.mediaMessage
          : mediaMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$DownloadReceivedMediaMessageDownloadSuccess
    implements DownloadReceivedMediaMessageDownloadSuccess {
  const _$DownloadReceivedMediaMessageDownloadSuccess(this.mediaMessage);

  @override
  final LocalChatMessage mediaMessage;

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageState.downloadSuccess(mediaMessage: $mediaMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageDownloadSuccess &&
            const DeepCollectionEquality()
                .equals(other.mediaMessage, mediaMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mediaMessage));

  @JsonKey(ignore: true)
  @override
  $DownloadReceivedMediaMessageDownloadSuccessCopyWith<
          DownloadReceivedMediaMessageDownloadSuccess>
      get copyWith => _$DownloadReceivedMediaMessageDownloadSuccessCopyWithImpl<
          DownloadReceivedMediaMessageDownloadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) {
    return downloadSuccess(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) {
    return downloadSuccess?.call(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(mediaMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) {
    return downloadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) {
    return downloadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadSuccess != null) {
      return downloadSuccess(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageDownloadSuccess
    implements DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageDownloadSuccess(
          LocalChatMessage mediaMessage) =
      _$DownloadReceivedMediaMessageDownloadSuccess;

  LocalChatMessage get mediaMessage;
  @JsonKey(ignore: true)
  $DownloadReceivedMediaMessageDownloadSuccessCopyWith<
          DownloadReceivedMediaMessageDownloadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadReceivedMediaMessageDownloadFailureCopyWith<$Res> {
  factory $DownloadReceivedMediaMessageDownloadFailureCopyWith(
          DownloadReceivedMediaMessageDownloadFailure value,
          $Res Function(DownloadReceivedMediaMessageDownloadFailure) then) =
      _$DownloadReceivedMediaMessageDownloadFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$DownloadReceivedMediaMessageDownloadFailureCopyWithImpl<$Res>
    extends _$DownloadReceivedMediaMessageStateCopyWithImpl<$Res>
    implements $DownloadReceivedMediaMessageDownloadFailureCopyWith<$Res> {
  _$DownloadReceivedMediaMessageDownloadFailureCopyWithImpl(
      DownloadReceivedMediaMessageDownloadFailure _value,
      $Res Function(DownloadReceivedMediaMessageDownloadFailure) _then)
      : super(_value,
            (v) => _then(v as DownloadReceivedMediaMessageDownloadFailure));

  @override
  DownloadReceivedMediaMessageDownloadFailure get _value =>
      super._value as DownloadReceivedMediaMessageDownloadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(DownloadReceivedMediaMessageDownloadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$DownloadReceivedMediaMessageDownloadFailure
    implements DownloadReceivedMediaMessageDownloadFailure {
  const _$DownloadReceivedMediaMessageDownloadFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'DownloadReceivedMediaMessageState.downloadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DownloadReceivedMediaMessageDownloadFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $DownloadReceivedMediaMessageDownloadFailureCopyWith<
          DownloadReceivedMediaMessageDownloadFailure>
      get copyWith => _$DownloadReceivedMediaMessageDownloadFailureCopyWithImpl<
          DownloadReceivedMediaMessageDownloadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> downloadProgress)
        downloadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) downloadSuccess,
    required TResult Function(ExceptionBase error) downloadFailure,
  }) {
    return downloadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
  }) {
    return downloadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> downloadProgress)? downloadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? downloadSuccess,
    TResult Function(ExceptionBase error)? downloadFailure,
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
    required TResult Function(DownloadReceivedMediaMessageInitial value)
        initial,
    required TResult Function(DownloadReceivedMediaMessageInProgress value)
        inProgress,
    required TResult Function(
            DownloadReceivedMediaMessageDownloadInProgress value)
        downloadInProgress,
    required TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)
        downloadSuccess,
    required TResult Function(DownloadReceivedMediaMessageDownloadFailure value)
        downloadFailure,
  }) {
    return downloadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
  }) {
    return downloadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadReceivedMediaMessageInitial value)? initial,
    TResult Function(DownloadReceivedMediaMessageInProgress value)? inProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadInProgress value)?
        downloadInProgress,
    TResult Function(DownloadReceivedMediaMessageDownloadSuccess value)?
        downloadSuccess,
    TResult Function(DownloadReceivedMediaMessageDownloadFailure value)?
        downloadFailure,
    required TResult orElse(),
  }) {
    if (downloadFailure != null) {
      return downloadFailure(this);
    }
    return orElse();
  }
}

abstract class DownloadReceivedMediaMessageDownloadFailure
    implements DownloadReceivedMediaMessageState {
  const factory DownloadReceivedMediaMessageDownloadFailure(
      ExceptionBase error) = _$DownloadReceivedMediaMessageDownloadFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $DownloadReceivedMediaMessageDownloadFailureCopyWith<
          DownloadReceivedMediaMessageDownloadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
