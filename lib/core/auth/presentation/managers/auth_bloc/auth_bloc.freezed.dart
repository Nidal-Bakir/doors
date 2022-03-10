// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  AuthLoginRequested authLoginRequested(User user) {
    return AuthLoginRequested(
      user,
    );
  }

  AuthSignUpRequested authSignUpRequested(User user) {
    return AuthSignUpRequested(
      user,
    );
  }

  AuthLoginAnonymouslyRequested authLoginAnonymouslyRequested() {
    return const AuthLoginAnonymouslyRequested();
  }

  AuthLogoutRequested authLogoutRequested() {
    return const AuthLogoutRequested();
  }

  AuthUpdatedUserDataRequested authUpdatedUserDataRequested() {
    return const AuthUpdatedUserDataRequested();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthLoginRequestedCopyWith<$Res> {
  factory $AuthLoginRequestedCopyWith(
          AuthLoginRequested value, $Res Function(AuthLoginRequested) then) =
      _$AuthLoginRequestedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthLoginRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoginRequestedCopyWith<$Res> {
  _$AuthLoginRequestedCopyWithImpl(
      AuthLoginRequested _value, $Res Function(AuthLoginRequested) _then)
      : super(_value, (v) => _then(v as AuthLoginRequested));

  @override
  AuthLoginRequested get _value => super._value as AuthLoginRequested;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLoginRequested(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthLoginRequested implements AuthLoginRequested {
  const _$AuthLoginRequested(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.authLoginRequested(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoginRequested &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLoginRequestedCopyWith<AuthLoginRequested> get copyWith =>
      _$AuthLoginRequestedCopyWithImpl<AuthLoginRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) {
    return authLoginRequested(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) {
    return authLoginRequested?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLoginRequested != null) {
      return authLoginRequested(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) {
    return authLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) {
    return authLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLoginRequested != null) {
      return authLoginRequested(this);
    }
    return orElse();
  }
}

abstract class AuthLoginRequested implements AuthEvent {
  const factory AuthLoginRequested(User user) = _$AuthLoginRequested;

  User get user;
  @JsonKey(ignore: true)
  $AuthLoginRequestedCopyWith<AuthLoginRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignUpRequestedCopyWith<$Res> {
  factory $AuthSignUpRequestedCopyWith(
          AuthSignUpRequested value, $Res Function(AuthSignUpRequested) then) =
      _$AuthSignUpRequestedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthSignUpRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthSignUpRequestedCopyWith<$Res> {
  _$AuthSignUpRequestedCopyWithImpl(
      AuthSignUpRequested _value, $Res Function(AuthSignUpRequested) _then)
      : super(_value, (v) => _then(v as AuthSignUpRequested));

  @override
  AuthSignUpRequested get _value => super._value as AuthSignUpRequested;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthSignUpRequested(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthSignUpRequested implements AuthSignUpRequested {
  const _$AuthSignUpRequested(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.authSignUpRequested(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignUpRequested &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthSignUpRequestedCopyWith<AuthSignUpRequested> get copyWith =>
      _$AuthSignUpRequestedCopyWithImpl<AuthSignUpRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) {
    return authSignUpRequested(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) {
    return authSignUpRequested?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authSignUpRequested != null) {
      return authSignUpRequested(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) {
    return authSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) {
    return authSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authSignUpRequested != null) {
      return authSignUpRequested(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpRequested implements AuthEvent {
  const factory AuthSignUpRequested(User user) = _$AuthSignUpRequested;

  User get user;
  @JsonKey(ignore: true)
  $AuthSignUpRequestedCopyWith<AuthSignUpRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoginAnonymouslyRequestedCopyWith<$Res> {
  factory $AuthLoginAnonymouslyRequestedCopyWith(
          AuthLoginAnonymouslyRequested value,
          $Res Function(AuthLoginAnonymouslyRequested) then) =
      _$AuthLoginAnonymouslyRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLoginAnonymouslyRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLoginAnonymouslyRequestedCopyWith<$Res> {
  _$AuthLoginAnonymouslyRequestedCopyWithImpl(
      AuthLoginAnonymouslyRequested _value,
      $Res Function(AuthLoginAnonymouslyRequested) _then)
      : super(_value, (v) => _then(v as AuthLoginAnonymouslyRequested));

  @override
  AuthLoginAnonymouslyRequested get _value =>
      super._value as AuthLoginAnonymouslyRequested;
}

/// @nodoc

class _$AuthLoginAnonymouslyRequested implements AuthLoginAnonymouslyRequested {
  const _$AuthLoginAnonymouslyRequested();

  @override
  String toString() {
    return 'AuthEvent.authLoginAnonymouslyRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoginAnonymouslyRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) {
    return authLoginAnonymouslyRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) {
    return authLoginAnonymouslyRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLoginAnonymouslyRequested != null) {
      return authLoginAnonymouslyRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) {
    return authLoginAnonymouslyRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) {
    return authLoginAnonymouslyRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLoginAnonymouslyRequested != null) {
      return authLoginAnonymouslyRequested(this);
    }
    return orElse();
  }
}

abstract class AuthLoginAnonymouslyRequested implements AuthEvent {
  const factory AuthLoginAnonymouslyRequested() =
      _$AuthLoginAnonymouslyRequested;
}

/// @nodoc
abstract class $AuthLogoutRequestedCopyWith<$Res> {
  factory $AuthLogoutRequestedCopyWith(
          AuthLogoutRequested value, $Res Function(AuthLogoutRequested) then) =
      _$AuthLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthLogoutRequestedCopyWith<$Res> {
  _$AuthLogoutRequestedCopyWithImpl(
      AuthLogoutRequested _value, $Res Function(AuthLogoutRequested) _then)
      : super(_value, (v) => _then(v as AuthLogoutRequested));

  @override
  AuthLogoutRequested get _value => super._value as AuthLogoutRequested;
}

/// @nodoc

class _$AuthLogoutRequested implements AuthLogoutRequested {
  const _$AuthLogoutRequested();

  @override
  String toString() {
    return 'AuthEvent.authLogoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) {
    return authLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) {
    return authLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLogoutRequested != null) {
      return authLogoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) {
    return authLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) {
    return authLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authLogoutRequested != null) {
      return authLogoutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutRequested implements AuthEvent {
  const factory AuthLogoutRequested() = _$AuthLogoutRequested;
}

/// @nodoc
abstract class $AuthUpdatedUserDataRequestedCopyWith<$Res> {
  factory $AuthUpdatedUserDataRequestedCopyWith(
          AuthUpdatedUserDataRequested value,
          $Res Function(AuthUpdatedUserDataRequested) then) =
      _$AuthUpdatedUserDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthUpdatedUserDataRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthUpdatedUserDataRequestedCopyWith<$Res> {
  _$AuthUpdatedUserDataRequestedCopyWithImpl(
      AuthUpdatedUserDataRequested _value,
      $Res Function(AuthUpdatedUserDataRequested) _then)
      : super(_value, (v) => _then(v as AuthUpdatedUserDataRequested));

  @override
  AuthUpdatedUserDataRequested get _value =>
      super._value as AuthUpdatedUserDataRequested;
}

/// @nodoc

class _$AuthUpdatedUserDataRequested implements AuthUpdatedUserDataRequested {
  const _$AuthUpdatedUserDataRequested();

  @override
  String toString() {
    return 'AuthEvent.authUpdatedUserDataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthUpdatedUserDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authUpdatedUserDataRequested,
  }) {
    return authUpdatedUserDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
  }) {
    return authUpdatedUserDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authUpdatedUserDataRequested != null) {
      return authUpdatedUserDataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthUpdatedUserDataRequested value)
        authUpdatedUserDataRequested,
  }) {
    return authUpdatedUserDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
  }) {
    return authUpdatedUserDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthUpdatedUserDataRequested value)?
        authUpdatedUserDataRequested,
    required TResult orElse(),
  }) {
    if (authUpdatedUserDataRequested != null) {
      return authUpdatedUserDataRequested(this);
    }
    return orElse();
  }
}

abstract class AuthUpdatedUserDataRequested implements AuthEvent {
  const factory AuthUpdatedUserDataRequested() = _$AuthUpdatedUserDataRequested;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  AuthInitial authInitial() {
    return const AuthInitial();
  }

  AuthInProgress authInProgress() {
    return const AuthInProgress();
  }

  AuthLoadSuccess authLoadSuccess(User user) {
    return AuthLoadSuccess(
      user,
    );
  }

  AuthLoadFailure authLoadFailure(ParseException exception) {
    return AuthLoadFailure(
      exception,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authLoadSuccess,
    required TResult Function(ParseException exception) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthLoadSuccess value) authLoadSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthInitialCopyWith<$Res> {
  factory $AuthInitialCopyWith(
          AuthInitial value, $Res Function(AuthInitial) then) =
      _$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInitialCopyWith<$Res> {
  _$AuthInitialCopyWithImpl(
      AuthInitial _value, $Res Function(AuthInitial) _then)
      : super(_value, (v) => _then(v as AuthInitial));

  @override
  AuthInitial get _value => super._value as AuthInitial;
}

/// @nodoc

class _$AuthInitial implements AuthInitial {
  const _$AuthInitial();

  @override
  String toString() {
    return 'AuthState.authInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authLoadSuccess,
    required TResult Function(ParseException exception) authLoadFailure,
  }) {
    return authInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
  }) {
    return authInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authInitial != null) {
      return authInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthLoadSuccess value) authLoadSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authInitial != null) {
      return authInitial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitial;
}

/// @nodoc
abstract class $AuthInProgressCopyWith<$Res> {
  factory $AuthInProgressCopyWith(
          AuthInProgress value, $Res Function(AuthInProgress) then) =
      _$AuthInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthInProgressCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthInProgressCopyWith<$Res> {
  _$AuthInProgressCopyWithImpl(
      AuthInProgress _value, $Res Function(AuthInProgress) _then)
      : super(_value, (v) => _then(v as AuthInProgress));

  @override
  AuthInProgress get _value => super._value as AuthInProgress;
}

/// @nodoc

class _$AuthInProgress implements AuthInProgress {
  const _$AuthInProgress();

  @override
  String toString() {
    return 'AuthState.authInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authLoadSuccess,
    required TResult Function(ParseException exception) authLoadFailure,
  }) {
    return authInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
  }) {
    return authInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthLoadSuccess value) authLoadSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authInProgress != null) {
      return authInProgress(this);
    }
    return orElse();
  }
}

abstract class AuthInProgress implements AuthState {
  const factory AuthInProgress() = _$AuthInProgress;
}

/// @nodoc
abstract class $AuthLoadSuccessCopyWith<$Res> {
  factory $AuthLoadSuccessCopyWith(
          AuthLoadSuccess value, $Res Function(AuthLoadSuccess) then) =
      _$AuthLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthLoadSuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadSuccessCopyWith<$Res> {
  _$AuthLoadSuccessCopyWithImpl(
      AuthLoadSuccess _value, $Res Function(AuthLoadSuccess) _then)
      : super(_value, (v) => _then(v as AuthLoadSuccess));

  @override
  AuthLoadSuccess get _value => super._value as AuthLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthLoadSuccess implements AuthLoadSuccess {
  const _$AuthLoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authLoadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLoadSuccessCopyWith<AuthLoadSuccess> get copyWith =>
      _$AuthLoadSuccessCopyWithImpl<AuthLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authLoadSuccess,
    required TResult Function(ParseException exception) authLoadFailure,
  }) {
    return authLoadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
  }) {
    return authLoadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoadSuccess != null) {
      return authLoadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthLoadSuccess value) authLoadSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoadSuccess != null) {
      return authLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthLoadSuccess implements AuthState {
  const factory AuthLoadSuccess(User user) = _$AuthLoadSuccess;

  User get user;
  @JsonKey(ignore: true)
  $AuthLoadSuccessCopyWith<AuthLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoadFailureCopyWith<$Res> {
  factory $AuthLoadFailureCopyWith(
          AuthLoadFailure value, $Res Function(AuthLoadFailure) then) =
      _$AuthLoadFailureCopyWithImpl<$Res>;
  $Res call({ParseException exception});
}

/// @nodoc
class _$AuthLoadFailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoadFailureCopyWith<$Res> {
  _$AuthLoadFailureCopyWithImpl(
      AuthLoadFailure _value, $Res Function(AuthLoadFailure) _then)
      : super(_value, (v) => _then(v as AuthLoadFailure));

  @override
  AuthLoadFailure get _value => super._value as AuthLoadFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(AuthLoadFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ParseException,
    ));
  }
}

/// @nodoc

class _$AuthLoadFailure implements AuthLoadFailure {
  const _$AuthLoadFailure(this.exception);

  @override
  final ParseException exception;

  @override
  String toString() {
    return 'AuthState.authLoadFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoadFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $AuthLoadFailureCopyWith<AuthLoadFailure> get copyWith =>
      _$AuthLoadFailureCopyWithImpl<AuthLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authLoadSuccess,
    required TResult Function(ParseException exception) authLoadFailure,
  }) {
    return authLoadFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
  }) {
    return authLoadFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authLoadSuccess,
    TResult Function(ParseException exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoadFailure != null) {
      return authLoadFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthLoadSuccess value) authLoadSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthLoadSuccess value)? authLoadSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoadFailure != null) {
      return authLoadFailure(this);
    }
    return orElse();
  }
}

abstract class AuthLoadFailure implements AuthState {
  const factory AuthLoadFailure(ParseException exception) = _$AuthLoadFailure;

  ParseException get exception;
  @JsonKey(ignore: true)
  $AuthLoadFailureCopyWith<AuthLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
