// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_media_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendMediaMessageEventTearOff {
  const _$SendMediaMessageEventTearOff();

  SendMediaMessageMessageSended messageSended() {
    return const SendMediaMessageMessageSended();
  }
}

/// @nodoc
const $SendMediaMessageEvent = _$SendMediaMessageEventTearOff();

/// @nodoc
mixin _$SendMediaMessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messageSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageMessageSended value)
        messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageMessageSended value)? messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageMessageSended value)? messageSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMediaMessageEventCopyWith<$Res> {
  factory $SendMediaMessageEventCopyWith(SendMediaMessageEvent value,
          $Res Function(SendMediaMessageEvent) then) =
      _$SendMediaMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMediaMessageEventCopyWithImpl<$Res>
    implements $SendMediaMessageEventCopyWith<$Res> {
  _$SendMediaMessageEventCopyWithImpl(this._value, this._then);

  final SendMediaMessageEvent _value;
  // ignore: unused_field
  final $Res Function(SendMediaMessageEvent) _then;
}

/// @nodoc
abstract class $SendMediaMessageMessageSendedCopyWith<$Res> {
  factory $SendMediaMessageMessageSendedCopyWith(
          SendMediaMessageMessageSended value,
          $Res Function(SendMediaMessageMessageSended) then) =
      _$SendMediaMessageMessageSendedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMediaMessageMessageSendedCopyWithImpl<$Res>
    extends _$SendMediaMessageEventCopyWithImpl<$Res>
    implements $SendMediaMessageMessageSendedCopyWith<$Res> {
  _$SendMediaMessageMessageSendedCopyWithImpl(
      SendMediaMessageMessageSended _value,
      $Res Function(SendMediaMessageMessageSended) _then)
      : super(_value, (v) => _then(v as SendMediaMessageMessageSended));

  @override
  SendMediaMessageMessageSended get _value =>
      super._value as SendMediaMessageMessageSended;
}

/// @nodoc

class _$SendMediaMessageMessageSended implements SendMediaMessageMessageSended {
  const _$SendMediaMessageMessageSended();

  @override
  String toString() {
    return 'SendMediaMessageEvent.messageSended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageMessageSended);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messageSended,
  }) {
    return messageSended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messageSended,
  }) {
    return messageSended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messageSended,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageMessageSended value)
        messageSended,
  }) {
    return messageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageMessageSended value)? messageSended,
  }) {
    return messageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageMessageSended value)? messageSended,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageMessageSended implements SendMediaMessageEvent {
  const factory SendMediaMessageMessageSended() =
      _$SendMediaMessageMessageSended;
}

/// @nodoc
class _$SendMediaMessageStateTearOff {
  const _$SendMediaMessageStateTearOff();

  SendMediaMessageInitial initial(LocalChatMessage mediaMessage) {
    return SendMediaMessageInitial(
      mediaMessage,
    );
  }

  SendMediaMessageInProgress inProgress() {
    return const SendMediaMessageInProgress();
  }

  SendMediaMessageUploadInProgress uploadInProgress(
      Tuple2<int, int> uploadProgress) {
    return SendMediaMessageUploadInProgress(
      uploadProgress,
    );
  }

  SendMediaMessageSendSuccess sendSuccess(LocalChatMessage mediaMessage) {
    return SendMediaMessageSendSuccess(
      mediaMessage,
    );
  }

  SendMediaMessageSendFailure sendFailure(ExceptionBase error) {
    return SendMediaMessageSendFailure(
      error,
    );
  }
}

/// @nodoc
const $SendMediaMessageState = _$SendMediaMessageStateTearOff();

/// @nodoc
mixin _$SendMediaMessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMediaMessageStateCopyWith<$Res> {
  factory $SendMediaMessageStateCopyWith(SendMediaMessageState value,
          $Res Function(SendMediaMessageState) then) =
      _$SendMediaMessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageStateCopyWith<$Res> {
  _$SendMediaMessageStateCopyWithImpl(this._value, this._then);

  final SendMediaMessageState _value;
  // ignore: unused_field
  final $Res Function(SendMediaMessageState) _then;
}

/// @nodoc
abstract class $SendMediaMessageInitialCopyWith<$Res> {
  factory $SendMediaMessageInitialCopyWith(SendMediaMessageInitial value,
          $Res Function(SendMediaMessageInitial) then) =
      _$SendMediaMessageInitialCopyWithImpl<$Res>;
  $Res call({LocalChatMessage mediaMessage});
}

/// @nodoc
class _$SendMediaMessageInitialCopyWithImpl<$Res>
    extends _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageInitialCopyWith<$Res> {
  _$SendMediaMessageInitialCopyWithImpl(SendMediaMessageInitial _value,
      $Res Function(SendMediaMessageInitial) _then)
      : super(_value, (v) => _then(v as SendMediaMessageInitial));

  @override
  SendMediaMessageInitial get _value => super._value as SendMediaMessageInitial;

  @override
  $Res call({
    Object? mediaMessage = freezed,
  }) {
    return _then(SendMediaMessageInitial(
      mediaMessage == freezed
          ? _value.mediaMessage
          : mediaMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$SendMediaMessageInitial implements SendMediaMessageInitial {
  const _$SendMediaMessageInitial(this.mediaMessage);

  @override
  final LocalChatMessage mediaMessage;

  @override
  String toString() {
    return 'SendMediaMessageState.initial(mediaMessage: $mediaMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageInitial &&
            const DeepCollectionEquality()
                .equals(other.mediaMessage, mediaMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mediaMessage));

  @JsonKey(ignore: true)
  @override
  $SendMediaMessageInitialCopyWith<SendMediaMessageInitial> get copyWith =>
      _$SendMediaMessageInitialCopyWithImpl<SendMediaMessageInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return initial(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return initial?.call(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
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
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageInitial implements SendMediaMessageState {
  const factory SendMediaMessageInitial(LocalChatMessage mediaMessage) =
      _$SendMediaMessageInitial;

  LocalChatMessage get mediaMessage;
  @JsonKey(ignore: true)
  $SendMediaMessageInitialCopyWith<SendMediaMessageInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMediaMessageInProgressCopyWith<$Res> {
  factory $SendMediaMessageInProgressCopyWith(SendMediaMessageInProgress value,
          $Res Function(SendMediaMessageInProgress) then) =
      _$SendMediaMessageInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendMediaMessageInProgressCopyWithImpl<$Res>
    extends _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageInProgressCopyWith<$Res> {
  _$SendMediaMessageInProgressCopyWithImpl(SendMediaMessageInProgress _value,
      $Res Function(SendMediaMessageInProgress) _then)
      : super(_value, (v) => _then(v as SendMediaMessageInProgress));

  @override
  SendMediaMessageInProgress get _value =>
      super._value as SendMediaMessageInProgress;
}

/// @nodoc

class _$SendMediaMessageInProgress implements SendMediaMessageInProgress {
  const _$SendMediaMessageInProgress();

  @override
  String toString() {
    return 'SendMediaMessageState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
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
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageInProgress implements SendMediaMessageState {
  const factory SendMediaMessageInProgress() = _$SendMediaMessageInProgress;
}

/// @nodoc
abstract class $SendMediaMessageUploadInProgressCopyWith<$Res> {
  factory $SendMediaMessageUploadInProgressCopyWith(
          SendMediaMessageUploadInProgress value,
          $Res Function(SendMediaMessageUploadInProgress) then) =
      _$SendMediaMessageUploadInProgressCopyWithImpl<$Res>;
  $Res call({Tuple2<int, int> uploadProgress});
}

/// @nodoc
class _$SendMediaMessageUploadInProgressCopyWithImpl<$Res>
    extends _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageUploadInProgressCopyWith<$Res> {
  _$SendMediaMessageUploadInProgressCopyWithImpl(
      SendMediaMessageUploadInProgress _value,
      $Res Function(SendMediaMessageUploadInProgress) _then)
      : super(_value, (v) => _then(v as SendMediaMessageUploadInProgress));

  @override
  SendMediaMessageUploadInProgress get _value =>
      super._value as SendMediaMessageUploadInProgress;

  @override
  $Res call({
    Object? uploadProgress = freezed,
  }) {
    return _then(SendMediaMessageUploadInProgress(
      uploadProgress == freezed
          ? _value.uploadProgress
          : uploadProgress // ignore: cast_nullable_to_non_nullable
              as Tuple2<int, int>,
    ));
  }
}

/// @nodoc

class _$SendMediaMessageUploadInProgress
    implements SendMediaMessageUploadInProgress {
  const _$SendMediaMessageUploadInProgress(this.uploadProgress);

  @override
  final Tuple2<int, int> uploadProgress;

  @override
  String toString() {
    return 'SendMediaMessageState.uploadInProgress(uploadProgress: $uploadProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageUploadInProgress &&
            const DeepCollectionEquality()
                .equals(other.uploadProgress, uploadProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(uploadProgress));

  @JsonKey(ignore: true)
  @override
  $SendMediaMessageUploadInProgressCopyWith<SendMediaMessageUploadInProgress>
      get copyWith => _$SendMediaMessageUploadInProgressCopyWithImpl<
          SendMediaMessageUploadInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return uploadInProgress(uploadProgress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return uploadInProgress?.call(uploadProgress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) {
    if (uploadInProgress != null) {
      return uploadInProgress(uploadProgress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) {
    return uploadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) {
    return uploadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (uploadInProgress != null) {
      return uploadInProgress(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageUploadInProgress
    implements SendMediaMessageState {
  const factory SendMediaMessageUploadInProgress(
      Tuple2<int, int> uploadProgress) = _$SendMediaMessageUploadInProgress;

  Tuple2<int, int> get uploadProgress;
  @JsonKey(ignore: true)
  $SendMediaMessageUploadInProgressCopyWith<SendMediaMessageUploadInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMediaMessageSendSuccessCopyWith<$Res> {
  factory $SendMediaMessageSendSuccessCopyWith(
          SendMediaMessageSendSuccess value,
          $Res Function(SendMediaMessageSendSuccess) then) =
      _$SendMediaMessageSendSuccessCopyWithImpl<$Res>;
  $Res call({LocalChatMessage mediaMessage});
}

/// @nodoc
class _$SendMediaMessageSendSuccessCopyWithImpl<$Res>
    extends _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageSendSuccessCopyWith<$Res> {
  _$SendMediaMessageSendSuccessCopyWithImpl(SendMediaMessageSendSuccess _value,
      $Res Function(SendMediaMessageSendSuccess) _then)
      : super(_value, (v) => _then(v as SendMediaMessageSendSuccess));

  @override
  SendMediaMessageSendSuccess get _value =>
      super._value as SendMediaMessageSendSuccess;

  @override
  $Res call({
    Object? mediaMessage = freezed,
  }) {
    return _then(SendMediaMessageSendSuccess(
      mediaMessage == freezed
          ? _value.mediaMessage
          : mediaMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$SendMediaMessageSendSuccess implements SendMediaMessageSendSuccess {
  const _$SendMediaMessageSendSuccess(this.mediaMessage);

  @override
  final LocalChatMessage mediaMessage;

  @override
  String toString() {
    return 'SendMediaMessageState.sendSuccess(mediaMessage: $mediaMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageSendSuccess &&
            const DeepCollectionEquality()
                .equals(other.mediaMessage, mediaMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mediaMessage));

  @JsonKey(ignore: true)
  @override
  $SendMediaMessageSendSuccessCopyWith<SendMediaMessageSendSuccess>
      get copyWith => _$SendMediaMessageSendSuccessCopyWithImpl<
          SendMediaMessageSendSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return sendSuccess(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return sendSuccess?.call(mediaMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(mediaMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) {
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) {
    return sendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageSendSuccess implements SendMediaMessageState {
  const factory SendMediaMessageSendSuccess(LocalChatMessage mediaMessage) =
      _$SendMediaMessageSendSuccess;

  LocalChatMessage get mediaMessage;
  @JsonKey(ignore: true)
  $SendMediaMessageSendSuccessCopyWith<SendMediaMessageSendSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMediaMessageSendFailureCopyWith<$Res> {
  factory $SendMediaMessageSendFailureCopyWith(
          SendMediaMessageSendFailure value,
          $Res Function(SendMediaMessageSendFailure) then) =
      _$SendMediaMessageSendFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$SendMediaMessageSendFailureCopyWithImpl<$Res>
    extends _$SendMediaMessageStateCopyWithImpl<$Res>
    implements $SendMediaMessageSendFailureCopyWith<$Res> {
  _$SendMediaMessageSendFailureCopyWithImpl(SendMediaMessageSendFailure _value,
      $Res Function(SendMediaMessageSendFailure) _then)
      : super(_value, (v) => _then(v as SendMediaMessageSendFailure));

  @override
  SendMediaMessageSendFailure get _value =>
      super._value as SendMediaMessageSendFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SendMediaMessageSendFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$SendMediaMessageSendFailure implements SendMediaMessageSendFailure {
  const _$SendMediaMessageSendFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'SendMediaMessageState.sendFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendMediaMessageSendFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SendMediaMessageSendFailureCopyWith<SendMediaMessageSendFailure>
      get copyWith => _$SendMediaMessageSendFailureCopyWithImpl<
          SendMediaMessageSendFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage mediaMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(Tuple2<int, int> uploadProgress) uploadInProgress,
    required TResult Function(LocalChatMessage mediaMessage) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return sendFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return sendFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage mediaMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(Tuple2<int, int> uploadProgress)? uploadInProgress,
    TResult Function(LocalChatMessage mediaMessage)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMediaMessageInitial value) initial,
    required TResult Function(SendMediaMessageInProgress value) inProgress,
    required TResult Function(SendMediaMessageUploadInProgress value)
        uploadInProgress,
    required TResult Function(SendMediaMessageSendSuccess value) sendSuccess,
    required TResult Function(SendMediaMessageSendFailure value) sendFailure,
  }) {
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
  }) {
    return sendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMediaMessageInitial value)? initial,
    TResult Function(SendMediaMessageInProgress value)? inProgress,
    TResult Function(SendMediaMessageUploadInProgress value)? uploadInProgress,
    TResult Function(SendMediaMessageSendSuccess value)? sendSuccess,
    TResult Function(SendMediaMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class SendMediaMessageSendFailure implements SendMediaMessageState {
  const factory SendMediaMessageSendFailure(ExceptionBase error) =
      _$SendMediaMessageSendFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $SendMediaMessageSendFailureCopyWith<SendMediaMessageSendFailure>
      get copyWith => throw _privateConstructorUsedError;
}
