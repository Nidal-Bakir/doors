// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_text_message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendTextMessageEventTearOff {
  const _$SendTextMessageEventTearOff();

  SendTextMessageMessageSended messageSended() {
    return const SendTextMessageMessageSended();
  }
}

/// @nodoc
const $SendTextMessageEvent = _$SendTextMessageEventTearOff();

/// @nodoc
mixin _$SendTextMessageEvent {
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
    required TResult Function(SendTextMessageMessageSended value) messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageMessageSended value)? messageSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageMessageSended value)? messageSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTextMessageEventCopyWith<$Res> {
  factory $SendTextMessageEventCopyWith(SendTextMessageEvent value,
          $Res Function(SendTextMessageEvent) then) =
      _$SendTextMessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTextMessageEventCopyWithImpl<$Res>
    implements $SendTextMessageEventCopyWith<$Res> {
  _$SendTextMessageEventCopyWithImpl(this._value, this._then);

  final SendTextMessageEvent _value;
  // ignore: unused_field
  final $Res Function(SendTextMessageEvent) _then;
}

/// @nodoc
abstract class $SendTextMessageMessageSendedCopyWith<$Res> {
  factory $SendTextMessageMessageSendedCopyWith(
          SendTextMessageMessageSended value,
          $Res Function(SendTextMessageMessageSended) then) =
      _$SendTextMessageMessageSendedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTextMessageMessageSendedCopyWithImpl<$Res>
    extends _$SendTextMessageEventCopyWithImpl<$Res>
    implements $SendTextMessageMessageSendedCopyWith<$Res> {
  _$SendTextMessageMessageSendedCopyWithImpl(
      SendTextMessageMessageSended _value,
      $Res Function(SendTextMessageMessageSended) _then)
      : super(_value, (v) => _then(v as SendTextMessageMessageSended));

  @override
  SendTextMessageMessageSended get _value =>
      super._value as SendTextMessageMessageSended;
}

/// @nodoc

class _$SendTextMessageMessageSended implements SendTextMessageMessageSended {
  const _$SendTextMessageMessageSended();

  @override
  String toString() {
    return 'SendTextMessageEvent.messageSended()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessageMessageSended);
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
    required TResult Function(SendTextMessageMessageSended value) messageSended,
  }) {
    return messageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageMessageSended value)? messageSended,
  }) {
    return messageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageMessageSended value)? messageSended,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(this);
    }
    return orElse();
  }
}

abstract class SendTextMessageMessageSended implements SendTextMessageEvent {
  const factory SendTextMessageMessageSended() = _$SendTextMessageMessageSended;
}

/// @nodoc
class _$SendTextMessageStateTearOff {
  const _$SendTextMessageStateTearOff();

  SendTextMessageInitial initial(LocalChatMessage textMessage) {
    return SendTextMessageInitial(
      textMessage,
    );
  }

  SendTextMessageInProgress inProgress() {
    return const SendTextMessageInProgress();
  }

  SendTextMessageSendSuccess sendSuccess(LocalChatMessage textMessage) {
    return SendTextMessageSendSuccess(
      textMessage,
    );
  }

  SendTextMessageSendFailure sendFailure(ServerException error) {
    return SendTextMessageSendFailure(
      error,
    );
  }
}

/// @nodoc
const $SendTextMessageState = _$SendTextMessageStateTearOff();

/// @nodoc
mixin _$SendTextMessageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage textMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(LocalChatMessage textMessage) sendSuccess,
    required TResult Function(ServerException error) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessageInitial value) initial,
    required TResult Function(SendTextMessageInProgress value) inProgress,
    required TResult Function(SendTextMessageSendSuccess value) sendSuccess,
    required TResult Function(SendTextMessageSendFailure value) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTextMessageStateCopyWith<$Res> {
  factory $SendTextMessageStateCopyWith(SendTextMessageState value,
          $Res Function(SendTextMessageState) then) =
      _$SendTextMessageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTextMessageStateCopyWithImpl<$Res>
    implements $SendTextMessageStateCopyWith<$Res> {
  _$SendTextMessageStateCopyWithImpl(this._value, this._then);

  final SendTextMessageState _value;
  // ignore: unused_field
  final $Res Function(SendTextMessageState) _then;
}

/// @nodoc
abstract class $SendTextMessageInitialCopyWith<$Res> {
  factory $SendTextMessageInitialCopyWith(SendTextMessageInitial value,
          $Res Function(SendTextMessageInitial) then) =
      _$SendTextMessageInitialCopyWithImpl<$Res>;
  $Res call({LocalChatMessage textMessage});
}

/// @nodoc
class _$SendTextMessageInitialCopyWithImpl<$Res>
    extends _$SendTextMessageStateCopyWithImpl<$Res>
    implements $SendTextMessageInitialCopyWith<$Res> {
  _$SendTextMessageInitialCopyWithImpl(SendTextMessageInitial _value,
      $Res Function(SendTextMessageInitial) _then)
      : super(_value, (v) => _then(v as SendTextMessageInitial));

  @override
  SendTextMessageInitial get _value => super._value as SendTextMessageInitial;

  @override
  $Res call({
    Object? textMessage = freezed,
  }) {
    return _then(SendTextMessageInitial(
      textMessage == freezed
          ? _value.textMessage
          : textMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$SendTextMessageInitial implements SendTextMessageInitial {
  const _$SendTextMessageInitial(this.textMessage);

  @override
  final LocalChatMessage textMessage;

  @override
  String toString() {
    return 'SendTextMessageState.initial(textMessage: $textMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessageInitial &&
            const DeepCollectionEquality()
                .equals(other.textMessage, textMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(textMessage));

  @JsonKey(ignore: true)
  @override
  $SendTextMessageInitialCopyWith<SendTextMessageInitial> get copyWith =>
      _$SendTextMessageInitialCopyWithImpl<SendTextMessageInitial>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage textMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(LocalChatMessage textMessage) sendSuccess,
    required TResult Function(ServerException error) sendFailure,
  }) {
    return initial(textMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
  }) {
    return initial?.call(textMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(textMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessageInitial value) initial,
    required TResult Function(SendTextMessageInProgress value) inProgress,
    required TResult Function(SendTextMessageSendSuccess value) sendSuccess,
    required TResult Function(SendTextMessageSendFailure value) sendFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SendTextMessageInitial implements SendTextMessageState {
  const factory SendTextMessageInitial(LocalChatMessage textMessage) =
      _$SendTextMessageInitial;

  LocalChatMessage get textMessage;
  @JsonKey(ignore: true)
  $SendTextMessageInitialCopyWith<SendTextMessageInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTextMessageInProgressCopyWith<$Res> {
  factory $SendTextMessageInProgressCopyWith(SendTextMessageInProgress value,
          $Res Function(SendTextMessageInProgress) then) =
      _$SendTextMessageInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendTextMessageInProgressCopyWithImpl<$Res>
    extends _$SendTextMessageStateCopyWithImpl<$Res>
    implements $SendTextMessageInProgressCopyWith<$Res> {
  _$SendTextMessageInProgressCopyWithImpl(SendTextMessageInProgress _value,
      $Res Function(SendTextMessageInProgress) _then)
      : super(_value, (v) => _then(v as SendTextMessageInProgress));

  @override
  SendTextMessageInProgress get _value =>
      super._value as SendTextMessageInProgress;
}

/// @nodoc

class _$SendTextMessageInProgress implements SendTextMessageInProgress {
  const _$SendTextMessageInProgress();

  @override
  String toString() {
    return 'SendTextMessageState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessageInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage textMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(LocalChatMessage textMessage) sendSuccess,
    required TResult Function(ServerException error) sendFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
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
    required TResult Function(SendTextMessageInitial value) initial,
    required TResult Function(SendTextMessageInProgress value) inProgress,
    required TResult Function(SendTextMessageSendSuccess value) sendSuccess,
    required TResult Function(SendTextMessageSendFailure value) sendFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SendTextMessageInProgress implements SendTextMessageState {
  const factory SendTextMessageInProgress() = _$SendTextMessageInProgress;
}

/// @nodoc
abstract class $SendTextMessageSendSuccessCopyWith<$Res> {
  factory $SendTextMessageSendSuccessCopyWith(SendTextMessageSendSuccess value,
          $Res Function(SendTextMessageSendSuccess) then) =
      _$SendTextMessageSendSuccessCopyWithImpl<$Res>;
  $Res call({LocalChatMessage textMessage});
}

/// @nodoc
class _$SendTextMessageSendSuccessCopyWithImpl<$Res>
    extends _$SendTextMessageStateCopyWithImpl<$Res>
    implements $SendTextMessageSendSuccessCopyWith<$Res> {
  _$SendTextMessageSendSuccessCopyWithImpl(SendTextMessageSendSuccess _value,
      $Res Function(SendTextMessageSendSuccess) _then)
      : super(_value, (v) => _then(v as SendTextMessageSendSuccess));

  @override
  SendTextMessageSendSuccess get _value =>
      super._value as SendTextMessageSendSuccess;

  @override
  $Res call({
    Object? textMessage = freezed,
  }) {
    return _then(SendTextMessageSendSuccess(
      textMessage == freezed
          ? _value.textMessage
          : textMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$SendTextMessageSendSuccess implements SendTextMessageSendSuccess {
  const _$SendTextMessageSendSuccess(this.textMessage);

  @override
  final LocalChatMessage textMessage;

  @override
  String toString() {
    return 'SendTextMessageState.sendSuccess(textMessage: $textMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessageSendSuccess &&
            const DeepCollectionEquality()
                .equals(other.textMessage, textMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(textMessage));

  @JsonKey(ignore: true)
  @override
  $SendTextMessageSendSuccessCopyWith<SendTextMessageSendSuccess>
      get copyWith =>
          _$SendTextMessageSendSuccessCopyWithImpl<SendTextMessageSendSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage textMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(LocalChatMessage textMessage) sendSuccess,
    required TResult Function(ServerException error) sendFailure,
  }) {
    return sendSuccess(textMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
  }) {
    return sendSuccess?.call(textMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(textMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendTextMessageInitial value) initial,
    required TResult Function(SendTextMessageInProgress value) inProgress,
    required TResult Function(SendTextMessageSendSuccess value) sendSuccess,
    required TResult Function(SendTextMessageSendFailure value) sendFailure,
  }) {
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
  }) {
    return sendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class SendTextMessageSendSuccess implements SendTextMessageState {
  const factory SendTextMessageSendSuccess(LocalChatMessage textMessage) =
      _$SendTextMessageSendSuccess;

  LocalChatMessage get textMessage;
  @JsonKey(ignore: true)
  $SendTextMessageSendSuccessCopyWith<SendTextMessageSendSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendTextMessageSendFailureCopyWith<$Res> {
  factory $SendTextMessageSendFailureCopyWith(SendTextMessageSendFailure value,
          $Res Function(SendTextMessageSendFailure) then) =
      _$SendTextMessageSendFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$SendTextMessageSendFailureCopyWithImpl<$Res>
    extends _$SendTextMessageStateCopyWithImpl<$Res>
    implements $SendTextMessageSendFailureCopyWith<$Res> {
  _$SendTextMessageSendFailureCopyWithImpl(SendTextMessageSendFailure _value,
      $Res Function(SendTextMessageSendFailure) _then)
      : super(_value, (v) => _then(v as SendTextMessageSendFailure));

  @override
  SendTextMessageSendFailure get _value =>
      super._value as SendTextMessageSendFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SendTextMessageSendFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$SendTextMessageSendFailure implements SendTextMessageSendFailure {
  const _$SendTextMessageSendFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'SendTextMessageState.sendFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendTextMessageSendFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SendTextMessageSendFailureCopyWith<SendTextMessageSendFailure>
      get copyWith =>
          _$SendTextMessageSendFailureCopyWithImpl<SendTextMessageSendFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage textMessage) initial,
    required TResult Function() inProgress,
    required TResult Function(LocalChatMessage textMessage) sendSuccess,
    required TResult Function(ServerException error) sendFailure,
  }) {
    return sendFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
  }) {
    return sendFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage textMessage)? initial,
    TResult Function()? inProgress,
    TResult Function(LocalChatMessage textMessage)? sendSuccess,
    TResult Function(ServerException error)? sendFailure,
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
    required TResult Function(SendTextMessageInitial value) initial,
    required TResult Function(SendTextMessageInProgress value) inProgress,
    required TResult Function(SendTextMessageSendSuccess value) sendSuccess,
    required TResult Function(SendTextMessageSendFailure value) sendFailure,
  }) {
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
  }) {
    return sendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendTextMessageInitial value)? initial,
    TResult Function(SendTextMessageInProgress value)? inProgress,
    TResult Function(SendTextMessageSendSuccess value)? sendSuccess,
    TResult Function(SendTextMessageSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class SendTextMessageSendFailure implements SendTextMessageState {
  const factory SendTextMessageSendFailure(ServerException error) =
      _$SendTextMessageSendFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $SendTextMessageSendFailureCopyWith<SendTextMessageSendFailure>
      get copyWith => throw _privateConstructorUsedError;
}
