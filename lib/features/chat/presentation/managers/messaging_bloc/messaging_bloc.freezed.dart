// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'messaging_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessagingEventTearOff {
  const _$MessagingEventTearOff();

  MessagingNewMessageSended newMessageSended(LocalChatMessage message) {
    return MessagingNewMessageSended(
      message,
    );
  }

  MessagingNewMessageReceived newMessageReceived(LocalChatMessage message) {
    return MessagingNewMessageReceived(
      message,
    );
  }
}

/// @nodoc
const $MessagingEvent = _$MessagingEventTearOff();

/// @nodoc
mixin _$MessagingEvent {
  LocalChatMessage get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage message) newMessageSended,
    required TResult Function(LocalChatMessage message) newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingNewMessageSended value) newMessageSended,
    required TResult Function(MessagingNewMessageReceived value)
        newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagingEventCopyWith<MessagingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingEventCopyWith<$Res> {
  factory $MessagingEventCopyWith(
          MessagingEvent value, $Res Function(MessagingEvent) then) =
      _$MessagingEventCopyWithImpl<$Res>;
  $Res call({LocalChatMessage message});
}

/// @nodoc
class _$MessagingEventCopyWithImpl<$Res>
    implements $MessagingEventCopyWith<$Res> {
  _$MessagingEventCopyWithImpl(this._value, this._then);

  final MessagingEvent _value;
  // ignore: unused_field
  final $Res Function(MessagingEvent) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc
abstract class $MessagingNewMessageSendedCopyWith<$Res>
    implements $MessagingEventCopyWith<$Res> {
  factory $MessagingNewMessageSendedCopyWith(MessagingNewMessageSended value,
          $Res Function(MessagingNewMessageSended) then) =
      _$MessagingNewMessageSendedCopyWithImpl<$Res>;
  @override
  $Res call({LocalChatMessage message});
}

/// @nodoc
class _$MessagingNewMessageSendedCopyWithImpl<$Res>
    extends _$MessagingEventCopyWithImpl<$Res>
    implements $MessagingNewMessageSendedCopyWith<$Res> {
  _$MessagingNewMessageSendedCopyWithImpl(MessagingNewMessageSended _value,
      $Res Function(MessagingNewMessageSended) _then)
      : super(_value, (v) => _then(v as MessagingNewMessageSended));

  @override
  MessagingNewMessageSended get _value =>
      super._value as MessagingNewMessageSended;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessagingNewMessageSended(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$MessagingNewMessageSended implements MessagingNewMessageSended {
  const _$MessagingNewMessageSended(this.message);

  @override
  final LocalChatMessage message;

  @override
  String toString() {
    return 'MessagingEvent.newMessageSended(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagingNewMessageSended &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessagingNewMessageSendedCopyWith<MessagingNewMessageSended> get copyWith =>
      _$MessagingNewMessageSendedCopyWithImpl<MessagingNewMessageSended>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage message) newMessageSended,
    required TResult Function(LocalChatMessage message) newMessageReceived,
  }) {
    return newMessageSended(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
  }) {
    return newMessageSended?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageSended != null) {
      return newMessageSended(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingNewMessageSended value) newMessageSended,
    required TResult Function(MessagingNewMessageReceived value)
        newMessageReceived,
  }) {
    return newMessageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
  }) {
    return newMessageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageSended != null) {
      return newMessageSended(this);
    }
    return orElse();
  }
}

abstract class MessagingNewMessageSended implements MessagingEvent {
  const factory MessagingNewMessageSended(LocalChatMessage message) =
      _$MessagingNewMessageSended;

  @override
  LocalChatMessage get message;
  @override
  @JsonKey(ignore: true)
  $MessagingNewMessageSendedCopyWith<MessagingNewMessageSended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingNewMessageReceivedCopyWith<$Res>
    implements $MessagingEventCopyWith<$Res> {
  factory $MessagingNewMessageReceivedCopyWith(
          MessagingNewMessageReceived value,
          $Res Function(MessagingNewMessageReceived) then) =
      _$MessagingNewMessageReceivedCopyWithImpl<$Res>;
  @override
  $Res call({LocalChatMessage message});
}

/// @nodoc
class _$MessagingNewMessageReceivedCopyWithImpl<$Res>
    extends _$MessagingEventCopyWithImpl<$Res>
    implements $MessagingNewMessageReceivedCopyWith<$Res> {
  _$MessagingNewMessageReceivedCopyWithImpl(MessagingNewMessageReceived _value,
      $Res Function(MessagingNewMessageReceived) _then)
      : super(_value, (v) => _then(v as MessagingNewMessageReceived));

  @override
  MessagingNewMessageReceived get _value =>
      super._value as MessagingNewMessageReceived;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessagingNewMessageReceived(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$MessagingNewMessageReceived implements MessagingNewMessageReceived {
  const _$MessagingNewMessageReceived(this.message);

  @override
  final LocalChatMessage message;

  @override
  String toString() {
    return 'MessagingEvent.newMessageReceived(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagingNewMessageReceived &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessagingNewMessageReceivedCopyWith<MessagingNewMessageReceived>
      get copyWith => _$MessagingNewMessageReceivedCopyWithImpl<
          MessagingNewMessageReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalChatMessage message) newMessageSended,
    required TResult Function(LocalChatMessage message) newMessageReceived,
  }) {
    return newMessageReceived(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
  }) {
    return newMessageReceived?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalChatMessage message)? newMessageSended,
    TResult Function(LocalChatMessage message)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingNewMessageSended value) newMessageSended,
    required TResult Function(MessagingNewMessageReceived value)
        newMessageReceived,
  }) {
    return newMessageReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
  }) {
    return newMessageReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingNewMessageSended value)? newMessageSended,
    TResult Function(MessagingNewMessageReceived value)? newMessageReceived,
    required TResult orElse(),
  }) {
    if (newMessageReceived != null) {
      return newMessageReceived(this);
    }
    return orElse();
  }
}

abstract class MessagingNewMessageReceived implements MessagingEvent {
  const factory MessagingNewMessageReceived(LocalChatMessage message) =
      _$MessagingNewMessageReceived;

  @override
  LocalChatMessage get message;
  @override
  @JsonKey(ignore: true)
  $MessagingNewMessageReceivedCopyWith<MessagingNewMessageReceived>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessagingStateTearOff {
  const _$MessagingStateTearOff();

  MessagingInitial initial() {
    return const MessagingInitial();
  }

  MessagingSendingMessageInProgress sendingMessageInProgress(
      LocalChatMessage message) {
    return MessagingSendingMessageInProgress(
      message,
    );
  }

  MessagingNewMessageReceivedSuccessfully newMessageReceivedSuccessfully(
      LocalChatMessage message) {
    return MessagingNewMessageReceivedSuccessfully(
      message,
    );
  }
}

/// @nodoc
const $MessagingState = _$MessagingStateTearOff();

/// @nodoc
mixin _$MessagingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocalChatMessage message)
        sendingMessageInProgress,
    required TResult Function(LocalChatMessage message)
        newMessageReceivedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingInitial value) initial,
    required TResult Function(MessagingSendingMessageInProgress value)
        sendingMessageInProgress,
    required TResult Function(MessagingNewMessageReceivedSuccessfully value)
        newMessageReceivedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingStateCopyWith<$Res> {
  factory $MessagingStateCopyWith(
          MessagingState value, $Res Function(MessagingState) then) =
      _$MessagingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagingStateCopyWithImpl<$Res>
    implements $MessagingStateCopyWith<$Res> {
  _$MessagingStateCopyWithImpl(this._value, this._then);

  final MessagingState _value;
  // ignore: unused_field
  final $Res Function(MessagingState) _then;
}

/// @nodoc
abstract class $MessagingInitialCopyWith<$Res> {
  factory $MessagingInitialCopyWith(
          MessagingInitial value, $Res Function(MessagingInitial) then) =
      _$MessagingInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessagingInitialCopyWithImpl<$Res>
    extends _$MessagingStateCopyWithImpl<$Res>
    implements $MessagingInitialCopyWith<$Res> {
  _$MessagingInitialCopyWithImpl(
      MessagingInitial _value, $Res Function(MessagingInitial) _then)
      : super(_value, (v) => _then(v as MessagingInitial));

  @override
  MessagingInitial get _value => super._value as MessagingInitial;
}

/// @nodoc

class _$MessagingInitial implements MessagingInitial {
  const _$MessagingInitial();

  @override
  String toString() {
    return 'MessagingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MessagingInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocalChatMessage message)
        sendingMessageInProgress,
    required TResult Function(LocalChatMessage message)
        newMessageReceivedSuccessfully,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
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
    required TResult Function(MessagingInitial value) initial,
    required TResult Function(MessagingSendingMessageInProgress value)
        sendingMessageInProgress,
    required TResult Function(MessagingNewMessageReceivedSuccessfully value)
        newMessageReceivedSuccessfully,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MessagingInitial implements MessagingState {
  const factory MessagingInitial() = _$MessagingInitial;
}

/// @nodoc
abstract class $MessagingSendingMessageInProgressCopyWith<$Res> {
  factory $MessagingSendingMessageInProgressCopyWith(
          MessagingSendingMessageInProgress value,
          $Res Function(MessagingSendingMessageInProgress) then) =
      _$MessagingSendingMessageInProgressCopyWithImpl<$Res>;
  $Res call({LocalChatMessage message});
}

/// @nodoc
class _$MessagingSendingMessageInProgressCopyWithImpl<$Res>
    extends _$MessagingStateCopyWithImpl<$Res>
    implements $MessagingSendingMessageInProgressCopyWith<$Res> {
  _$MessagingSendingMessageInProgressCopyWithImpl(
      MessagingSendingMessageInProgress _value,
      $Res Function(MessagingSendingMessageInProgress) _then)
      : super(_value, (v) => _then(v as MessagingSendingMessageInProgress));

  @override
  MessagingSendingMessageInProgress get _value =>
      super._value as MessagingSendingMessageInProgress;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessagingSendingMessageInProgress(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$MessagingSendingMessageInProgress
    implements MessagingSendingMessageInProgress {
  const _$MessagingSendingMessageInProgress(this.message);

  @override
  final LocalChatMessage message;

  @override
  String toString() {
    return 'MessagingState.sendingMessageInProgress(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagingSendingMessageInProgress &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessagingSendingMessageInProgressCopyWith<MessagingSendingMessageInProgress>
      get copyWith => _$MessagingSendingMessageInProgressCopyWithImpl<
          MessagingSendingMessageInProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocalChatMessage message)
        sendingMessageInProgress,
    required TResult Function(LocalChatMessage message)
        newMessageReceivedSuccessfully,
  }) {
    return sendingMessageInProgress(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
  }) {
    return sendingMessageInProgress?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) {
    if (sendingMessageInProgress != null) {
      return sendingMessageInProgress(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingInitial value) initial,
    required TResult Function(MessagingSendingMessageInProgress value)
        sendingMessageInProgress,
    required TResult Function(MessagingNewMessageReceivedSuccessfully value)
        newMessageReceivedSuccessfully,
  }) {
    return sendingMessageInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
  }) {
    return sendingMessageInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) {
    if (sendingMessageInProgress != null) {
      return sendingMessageInProgress(this);
    }
    return orElse();
  }
}

abstract class MessagingSendingMessageInProgress implements MessagingState {
  const factory MessagingSendingMessageInProgress(LocalChatMessage message) =
      _$MessagingSendingMessageInProgress;

  LocalChatMessage get message;
  @JsonKey(ignore: true)
  $MessagingSendingMessageInProgressCopyWith<MessagingSendingMessageInProgress>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingNewMessageReceivedSuccessfullyCopyWith<$Res> {
  factory $MessagingNewMessageReceivedSuccessfullyCopyWith(
          MessagingNewMessageReceivedSuccessfully value,
          $Res Function(MessagingNewMessageReceivedSuccessfully) then) =
      _$MessagingNewMessageReceivedSuccessfullyCopyWithImpl<$Res>;
  $Res call({LocalChatMessage message});
}

/// @nodoc
class _$MessagingNewMessageReceivedSuccessfullyCopyWithImpl<$Res>
    extends _$MessagingStateCopyWithImpl<$Res>
    implements $MessagingNewMessageReceivedSuccessfullyCopyWith<$Res> {
  _$MessagingNewMessageReceivedSuccessfullyCopyWithImpl(
      MessagingNewMessageReceivedSuccessfully _value,
      $Res Function(MessagingNewMessageReceivedSuccessfully) _then)
      : super(
            _value, (v) => _then(v as MessagingNewMessageReceivedSuccessfully));

  @override
  MessagingNewMessageReceivedSuccessfully get _value =>
      super._value as MessagingNewMessageReceivedSuccessfully;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(MessagingNewMessageReceivedSuccessfully(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$MessagingNewMessageReceivedSuccessfully
    implements MessagingNewMessageReceivedSuccessfully {
  const _$MessagingNewMessageReceivedSuccessfully(this.message);

  @override
  final LocalChatMessage message;

  @override
  String toString() {
    return 'MessagingState.newMessageReceivedSuccessfully(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessagingNewMessageReceivedSuccessfully &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $MessagingNewMessageReceivedSuccessfullyCopyWith<
          MessagingNewMessageReceivedSuccessfully>
      get copyWith => _$MessagingNewMessageReceivedSuccessfullyCopyWithImpl<
          MessagingNewMessageReceivedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(LocalChatMessage message)
        sendingMessageInProgress,
    required TResult Function(LocalChatMessage message)
        newMessageReceivedSuccessfully,
  }) {
    return newMessageReceivedSuccessfully(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
  }) {
    return newMessageReceivedSuccessfully?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(LocalChatMessage message)? sendingMessageInProgress,
    TResult Function(LocalChatMessage message)? newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) {
    if (newMessageReceivedSuccessfully != null) {
      return newMessageReceivedSuccessfully(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessagingInitial value) initial,
    required TResult Function(MessagingSendingMessageInProgress value)
        sendingMessageInProgress,
    required TResult Function(MessagingNewMessageReceivedSuccessfully value)
        newMessageReceivedSuccessfully,
  }) {
    return newMessageReceivedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
  }) {
    return newMessageReceivedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessagingInitial value)? initial,
    TResult Function(MessagingSendingMessageInProgress value)?
        sendingMessageInProgress,
    TResult Function(MessagingNewMessageReceivedSuccessfully value)?
        newMessageReceivedSuccessfully,
    required TResult orElse(),
  }) {
    if (newMessageReceivedSuccessfully != null) {
      return newMessageReceivedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class MessagingNewMessageReceivedSuccessfully
    implements MessagingState {
  const factory MessagingNewMessageReceivedSuccessfully(
      LocalChatMessage message) = _$MessagingNewMessageReceivedSuccessfully;

  LocalChatMessage get message;
  @JsonKey(ignore: true)
  $MessagingNewMessageReceivedSuccessfullyCopyWith<
          MessagingNewMessageReceivedSuccessfully>
      get copyWith => throw _privateConstructorUsedError;
}
