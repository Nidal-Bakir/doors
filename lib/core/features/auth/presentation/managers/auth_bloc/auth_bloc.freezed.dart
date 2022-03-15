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

  AuthGetUpdatedUserDataRequested authGetUpdatedUserDataRequested() {
    return const AuthGetUpdatedUserDataRequested();
  }

  AuthCurrentUserLoaded authCurrentUserLoaded() {
    return const AuthCurrentUserLoaded();
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
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
abstract class $AuthGetUpdatedUserDataRequestedCopyWith<$Res> {
  factory $AuthGetUpdatedUserDataRequestedCopyWith(
          AuthGetUpdatedUserDataRequested value,
          $Res Function(AuthGetUpdatedUserDataRequested) then) =
      _$AuthGetUpdatedUserDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthGetUpdatedUserDataRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthGetUpdatedUserDataRequestedCopyWith<$Res> {
  _$AuthGetUpdatedUserDataRequestedCopyWithImpl(
      AuthGetUpdatedUserDataRequested _value,
      $Res Function(AuthGetUpdatedUserDataRequested) _then)
      : super(_value, (v) => _then(v as AuthGetUpdatedUserDataRequested));

  @override
  AuthGetUpdatedUserDataRequested get _value =>
      super._value as AuthGetUpdatedUserDataRequested;
}

/// @nodoc

class _$AuthGetUpdatedUserDataRequested
    implements AuthGetUpdatedUserDataRequested {
  const _$AuthGetUpdatedUserDataRequested();

  @override
  String toString() {
    return 'AuthEvent.authGetUpdatedUserDataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthGetUpdatedUserDataRequested);
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
  }) {
    return authGetUpdatedUserDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
  }) {
    return authGetUpdatedUserDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    required TResult orElse(),
  }) {
    if (authGetUpdatedUserDataRequested != null) {
      return authGetUpdatedUserDataRequested();
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
  }) {
    return authGetUpdatedUserDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
  }) {
    return authGetUpdatedUserDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    required TResult orElse(),
  }) {
    if (authGetUpdatedUserDataRequested != null) {
      return authGetUpdatedUserDataRequested(this);
    }
    return orElse();
  }
}

abstract class AuthGetUpdatedUserDataRequested implements AuthEvent {
  const factory AuthGetUpdatedUserDataRequested() =
      _$AuthGetUpdatedUserDataRequested;
}

/// @nodoc
abstract class $AuthCurrentUserLoadedCopyWith<$Res> {
  factory $AuthCurrentUserLoadedCopyWith(AuthCurrentUserLoaded value,
          $Res Function(AuthCurrentUserLoaded) then) =
      _$AuthCurrentUserLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCurrentUserLoadedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCurrentUserLoadedCopyWith<$Res> {
  _$AuthCurrentUserLoadedCopyWithImpl(
      AuthCurrentUserLoaded _value, $Res Function(AuthCurrentUserLoaded) _then)
      : super(_value, (v) => _then(v as AuthCurrentUserLoaded));

  @override
  AuthCurrentUserLoaded get _value => super._value as AuthCurrentUserLoaded;
}

/// @nodoc

class _$AuthCurrentUserLoaded implements AuthCurrentUserLoaded {
  const _$AuthCurrentUserLoaded();

  @override
  String toString() {
    return 'AuthEvent.authCurrentUserLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthCurrentUserLoaded);
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
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
  }) {
    return authCurrentUserLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
  }) {
    return authCurrentUserLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    required TResult orElse(),
  }) {
    if (authCurrentUserLoaded != null) {
      return authCurrentUserLoaded();
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
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
  }) {
    return authCurrentUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
  }) {
    return authCurrentUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    required TResult orElse(),
  }) {
    if (authCurrentUserLoaded != null) {
      return authCurrentUserLoaded(this);
    }
    return orElse();
  }
}

abstract class AuthCurrentUserLoaded implements AuthEvent {
  const factory AuthCurrentUserLoaded() = _$AuthCurrentUserLoaded;
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

  AuthCurrentLoadSuccess authCurrentLoadSuccess(User user) {
    return AuthCurrentLoadSuccess(
      user,
    );
  }

  AuthLoggedInSuccess authLoggedInSuccess(User user) {
    return AuthLoggedInSuccess(
      user,
    );
  }

  AuthLogoutSuccess authLogoutSuccess() {
    return const AuthLogoutSuccess();
  }

  AuthLoadFailure authLoadFailure(Exception exception) {
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
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
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
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
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
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
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
abstract class $AuthCurrentLoadSuccessCopyWith<$Res> {
  factory $AuthCurrentLoadSuccessCopyWith(AuthCurrentLoadSuccess value,
          $Res Function(AuthCurrentLoadSuccess) then) =
      _$AuthCurrentLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthCurrentLoadSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthCurrentLoadSuccessCopyWith<$Res> {
  _$AuthCurrentLoadSuccessCopyWithImpl(AuthCurrentLoadSuccess _value,
      $Res Function(AuthCurrentLoadSuccess) _then)
      : super(_value, (v) => _then(v as AuthCurrentLoadSuccess));

  @override
  AuthCurrentLoadSuccess get _value => super._value as AuthCurrentLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthCurrentLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthCurrentLoadSuccess implements AuthCurrentLoadSuccess {
  const _$AuthCurrentLoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authCurrentLoadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCurrentLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthCurrentLoadSuccessCopyWith<AuthCurrentLoadSuccess> get copyWith =>
      _$AuthCurrentLoadSuccessCopyWithImpl<AuthCurrentLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authCurrentLoadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authCurrentLoadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authCurrentLoadSuccess != null) {
      return authCurrentLoadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authCurrentLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authCurrentLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authCurrentLoadSuccess != null) {
      return authCurrentLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthCurrentLoadSuccess implements AuthState {
  const factory AuthCurrentLoadSuccess(User user) = _$AuthCurrentLoadSuccess;

  User get user;
  @JsonKey(ignore: true)
  $AuthCurrentLoadSuccessCopyWith<AuthCurrentLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLoggedInSuccessCopyWith<$Res> {
  factory $AuthLoggedInSuccessCopyWith(
          AuthLoggedInSuccess value, $Res Function(AuthLoggedInSuccess) then) =
      _$AuthLoggedInSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthLoggedInSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLoggedInSuccessCopyWith<$Res> {
  _$AuthLoggedInSuccessCopyWithImpl(
      AuthLoggedInSuccess _value, $Res Function(AuthLoggedInSuccess) _then)
      : super(_value, (v) => _then(v as AuthLoggedInSuccess));

  @override
  AuthLoggedInSuccess get _value => super._value as AuthLoggedInSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthLoggedInSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthLoggedInSuccess implements AuthLoggedInSuccess {
  const _$AuthLoggedInSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authLoggedInSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthLoggedInSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthLoggedInSuccessCopyWith<AuthLoggedInSuccess> get copyWith =>
      _$AuthLoggedInSuccessCopyWithImpl<AuthLoggedInSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authLoggedInSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authLoggedInSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoggedInSuccess != null) {
      return authLoggedInSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoggedInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoggedInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLoggedInSuccess != null) {
      return authLoggedInSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthLoggedInSuccess implements AuthState {
  const factory AuthLoggedInSuccess(User user) = _$AuthLoggedInSuccess;

  User get user;
  @JsonKey(ignore: true)
  $AuthLoggedInSuccessCopyWith<AuthLoggedInSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthLogoutSuccessCopyWith<$Res> {
  factory $AuthLogoutSuccessCopyWith(
          AuthLogoutSuccess value, $Res Function(AuthLogoutSuccess) then) =
      _$AuthLogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthLogoutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthLogoutSuccessCopyWith<$Res> {
  _$AuthLogoutSuccessCopyWithImpl(
      AuthLogoutSuccess _value, $Res Function(AuthLogoutSuccess) _then)
      : super(_value, (v) => _then(v as AuthLogoutSuccess));

  @override
  AuthLogoutSuccess get _value => super._value as AuthLogoutSuccess;
}

/// @nodoc

class _$AuthLogoutSuccess implements AuthLogoutSuccess {
  const _$AuthLogoutSuccess();

  @override
  String toString() {
    return 'AuthState.authLogoutSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authLogoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authLogoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLogoutSuccess != null) {
      return authLogoutSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLogoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLogoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authLogoutSuccess != null) {
      return authLogoutSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthLogoutSuccess implements AuthState {
  const factory AuthLogoutSuccess() = _$AuthLogoutSuccess;
}

/// @nodoc
abstract class $AuthLoadFailureCopyWith<$Res> {
  factory $AuthLoadFailureCopyWith(
          AuthLoadFailure value, $Res Function(AuthLoadFailure) then) =
      _$AuthLoadFailureCopyWithImpl<$Res>;
  $Res call({Exception exception});
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
              as Exception,
    ));
  }
}

/// @nodoc

class _$AuthLoadFailure implements AuthLoadFailure {
  const _$AuthLoadFailure(this.exception);

  @override
  final Exception exception;

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
    required TResult Function(User user) authCurrentLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function(Exception exception) authLoadFailure,
  }) {
    return authLoadFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
  }) {
    return authLoadFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function(Exception exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentLoadSuccess value)
        authCurrentLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentLoadSuccess value)? authCurrentLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
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
  const factory AuthLoadFailure(Exception exception) = _$AuthLoadFailure;

  Exception get exception;
  @JsonKey(ignore: true)
  $AuthLoadFailureCopyWith<AuthLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}