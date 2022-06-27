// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConnectionStatusEventTearOff {
  const _$ConnectionStatusEventTearOff();

  ConnectionStatusChanged changed(LiveQueryClientEvent connectionState) {
    return ConnectionStatusChanged(
      connectionState,
    );
  }
}

/// @nodoc
const $ConnectionStatusEvent = _$ConnectionStatusEventTearOff();

/// @nodoc
mixin _$ConnectionStatusEvent {
  LiveQueryClientEvent get connectionState =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LiveQueryClientEvent connectionState) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LiveQueryClientEvent connectionState)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LiveQueryClientEvent connectionState)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionStatusChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionStatusChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionStatusChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStatusEventCopyWith<ConnectionStatusEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStatusEventCopyWith<$Res> {
  factory $ConnectionStatusEventCopyWith(ConnectionStatusEvent value,
          $Res Function(ConnectionStatusEvent) then) =
      _$ConnectionStatusEventCopyWithImpl<$Res>;
  $Res call({LiveQueryClientEvent connectionState});
}

/// @nodoc
class _$ConnectionStatusEventCopyWithImpl<$Res>
    implements $ConnectionStatusEventCopyWith<$Res> {
  _$ConnectionStatusEventCopyWithImpl(this._value, this._then);

  final ConnectionStatusEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectionStatusEvent) _then;

  @override
  $Res call({
    Object? connectionState = freezed,
  }) {
    return _then(_value.copyWith(
      connectionState: connectionState == freezed
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as LiveQueryClientEvent,
    ));
  }
}

/// @nodoc
abstract class $ConnectionStatusChangedCopyWith<$Res>
    implements $ConnectionStatusEventCopyWith<$Res> {
  factory $ConnectionStatusChangedCopyWith(ConnectionStatusChanged value,
          $Res Function(ConnectionStatusChanged) then) =
      _$ConnectionStatusChangedCopyWithImpl<$Res>;
  @override
  $Res call({LiveQueryClientEvent connectionState});
}

/// @nodoc
class _$ConnectionStatusChangedCopyWithImpl<$Res>
    extends _$ConnectionStatusEventCopyWithImpl<$Res>
    implements $ConnectionStatusChangedCopyWith<$Res> {
  _$ConnectionStatusChangedCopyWithImpl(ConnectionStatusChanged _value,
      $Res Function(ConnectionStatusChanged) _then)
      : super(_value, (v) => _then(v as ConnectionStatusChanged));

  @override
  ConnectionStatusChanged get _value => super._value as ConnectionStatusChanged;

  @override
  $Res call({
    Object? connectionState = freezed,
  }) {
    return _then(ConnectionStatusChanged(
      connectionState == freezed
          ? _value.connectionState
          : connectionState // ignore: cast_nullable_to_non_nullable
              as LiveQueryClientEvent,
    ));
  }
}

/// @nodoc

class _$ConnectionStatusChanged implements ConnectionStatusChanged {
  const _$ConnectionStatusChanged(this.connectionState);

  @override
  final LiveQueryClientEvent connectionState;

  @override
  String toString() {
    return 'ConnectionStatusEvent.changed(connectionState: $connectionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionStatusChanged &&
            const DeepCollectionEquality()
                .equals(other.connectionState, connectionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(connectionState));

  @JsonKey(ignore: true)
  @override
  $ConnectionStatusChangedCopyWith<ConnectionStatusChanged> get copyWith =>
      _$ConnectionStatusChangedCopyWithImpl<ConnectionStatusChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LiveQueryClientEvent connectionState) changed,
  }) {
    return changed(connectionState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LiveQueryClientEvent connectionState)? changed,
  }) {
    return changed?.call(connectionState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LiveQueryClientEvent connectionState)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(connectionState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionStatusChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionStatusChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionStatusChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class ConnectionStatusChanged implements ConnectionStatusEvent {
  const factory ConnectionStatusChanged(LiveQueryClientEvent connectionState) =
      _$ConnectionStatusChanged;

  @override
  LiveQueryClientEvent get connectionState;
  @override
  @JsonKey(ignore: true)
  $ConnectionStatusChangedCopyWith<ConnectionStatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ConnectionStatusStateTearOff {
  const _$ConnectionStatusStateTearOff();

  ConnectionStatusConnecting connecting() {
    return const ConnectionStatusConnecting();
  }

  ConnectionStatusConnected connected() {
    return const ConnectionStatusConnected();
  }
}

/// @nodoc
const $ConnectionStatusState = _$ConnectionStatusStateTearOff();

/// @nodoc
mixin _$ConnectionStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionStatusConnecting value) connecting,
    required TResult Function(ConnectionStatusConnected value) connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStatusStateCopyWith<$Res> {
  factory $ConnectionStatusStateCopyWith(ConnectionStatusState value,
          $Res Function(ConnectionStatusState) then) =
      _$ConnectionStatusStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionStatusStateCopyWithImpl<$Res>
    implements $ConnectionStatusStateCopyWith<$Res> {
  _$ConnectionStatusStateCopyWithImpl(this._value, this._then);

  final ConnectionStatusState _value;
  // ignore: unused_field
  final $Res Function(ConnectionStatusState) _then;
}

/// @nodoc
abstract class $ConnectionStatusConnectingCopyWith<$Res> {
  factory $ConnectionStatusConnectingCopyWith(ConnectionStatusConnecting value,
          $Res Function(ConnectionStatusConnecting) then) =
      _$ConnectionStatusConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionStatusConnectingCopyWithImpl<$Res>
    extends _$ConnectionStatusStateCopyWithImpl<$Res>
    implements $ConnectionStatusConnectingCopyWith<$Res> {
  _$ConnectionStatusConnectingCopyWithImpl(ConnectionStatusConnecting _value,
      $Res Function(ConnectionStatusConnecting) _then)
      : super(_value, (v) => _then(v as ConnectionStatusConnecting));

  @override
  ConnectionStatusConnecting get _value =>
      super._value as ConnectionStatusConnecting;
}

/// @nodoc

class _$ConnectionStatusConnecting implements ConnectionStatusConnecting {
  const _$ConnectionStatusConnecting();

  @override
  String toString() {
    return 'ConnectionStatusState.connecting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionStatusConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() connected,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionStatusConnecting value) connecting,
    required TResult Function(ConnectionStatusConnected value) connected,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class ConnectionStatusConnecting implements ConnectionStatusState {
  const factory ConnectionStatusConnecting() = _$ConnectionStatusConnecting;
}

/// @nodoc
abstract class $ConnectionStatusConnectedCopyWith<$Res> {
  factory $ConnectionStatusConnectedCopyWith(ConnectionStatusConnected value,
          $Res Function(ConnectionStatusConnected) then) =
      _$ConnectionStatusConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionStatusConnectedCopyWithImpl<$Res>
    extends _$ConnectionStatusStateCopyWithImpl<$Res>
    implements $ConnectionStatusConnectedCopyWith<$Res> {
  _$ConnectionStatusConnectedCopyWithImpl(ConnectionStatusConnected _value,
      $Res Function(ConnectionStatusConnected) _then)
      : super(_value, (v) => _then(v as ConnectionStatusConnected));

  @override
  ConnectionStatusConnected get _value =>
      super._value as ConnectionStatusConnected;
}

/// @nodoc

class _$ConnectionStatusConnected implements ConnectionStatusConnected {
  const _$ConnectionStatusConnected();

  @override
  String toString() {
    return 'ConnectionStatusState.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConnectionStatusConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecting,
    required TResult Function() connected,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecting,
    TResult Function()? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionStatusConnecting value) connecting,
    required TResult Function(ConnectionStatusConnected value) connected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionStatusConnecting value)? connecting,
    TResult Function(ConnectionStatusConnected value)? connected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class ConnectionStatusConnected implements ConnectionStatusState {
  const factory ConnectionStatusConnected() = _$ConnectionStatusConnected;
}
