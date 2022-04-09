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

  AuthCurrentAccountSuspended authCurrentAccountSuspended(
      SuspendedAccount suspendedAccountException) {
    return AuthCurrentAccountSuspended(
      suspendedAccountException,
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

  AuthResetPasswordRequested authResetPasswordRequested(
      {required String userEmail}) {
    return AuthResetPasswordRequested(
      userEmail: userEmail,
    );
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authLoginRequested(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authLoginRequested?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authLoginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authLoginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authSignUpRequested(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authSignUpRequested?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authSignUpRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authSignUpRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
abstract class $AuthCurrentAccountSuspendedCopyWith<$Res> {
  factory $AuthCurrentAccountSuspendedCopyWith(
          AuthCurrentAccountSuspended value,
          $Res Function(AuthCurrentAccountSuspended) then) =
      _$AuthCurrentAccountSuspendedCopyWithImpl<$Res>;
  $Res call({SuspendedAccount suspendedAccountException});
}

/// @nodoc
class _$AuthCurrentAccountSuspendedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCurrentAccountSuspendedCopyWith<$Res> {
  _$AuthCurrentAccountSuspendedCopyWithImpl(AuthCurrentAccountSuspended _value,
      $Res Function(AuthCurrentAccountSuspended) _then)
      : super(_value, (v) => _then(v as AuthCurrentAccountSuspended));

  @override
  AuthCurrentAccountSuspended get _value =>
      super._value as AuthCurrentAccountSuspended;

  @override
  $Res call({
    Object? suspendedAccountException = freezed,
  }) {
    return _then(AuthCurrentAccountSuspended(
      suspendedAccountException == freezed
          ? _value.suspendedAccountException
          : suspendedAccountException // ignore: cast_nullable_to_non_nullable
              as SuspendedAccount,
    ));
  }
}

/// @nodoc

class _$AuthCurrentAccountSuspended implements AuthCurrentAccountSuspended {
  const _$AuthCurrentAccountSuspended(this.suspendedAccountException);

  @override
  final SuspendedAccount suspendedAccountException;

  @override
  String toString() {
    return 'AuthEvent.authCurrentAccountSuspended(suspendedAccountException: $suspendedAccountException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCurrentAccountSuspended &&
            const DeepCollectionEquality().equals(
                other.suspendedAccountException, suspendedAccountException));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(suspendedAccountException));

  @JsonKey(ignore: true)
  @override
  $AuthCurrentAccountSuspendedCopyWith<AuthCurrentAccountSuspended>
      get copyWith => _$AuthCurrentAccountSuspendedCopyWithImpl<
          AuthCurrentAccountSuspended>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authCurrentAccountSuspended(suspendedAccountException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authCurrentAccountSuspended?.call(suspendedAccountException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
    required TResult orElse(),
  }) {
    if (authCurrentAccountSuspended != null) {
      return authCurrentAccountSuspended(suspendedAccountException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authCurrentAccountSuspended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authCurrentAccountSuspended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
    required TResult orElse(),
  }) {
    if (authCurrentAccountSuspended != null) {
      return authCurrentAccountSuspended(this);
    }
    return orElse();
  }
}

abstract class AuthCurrentAccountSuspended implements AuthEvent {
  const factory AuthCurrentAccountSuspended(
          SuspendedAccount suspendedAccountException) =
      _$AuthCurrentAccountSuspended;

  SuspendedAccount get suspendedAccountException;
  @JsonKey(ignore: true)
  $AuthCurrentAccountSuspendedCopyWith<AuthCurrentAccountSuspended>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authLoginAnonymouslyRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authLoginAnonymouslyRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authLoginAnonymouslyRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authLoginAnonymouslyRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authLogoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authLogoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authLogoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authLogoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authGetUpdatedUserDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authGetUpdatedUserDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authGetUpdatedUserDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authGetUpdatedUserDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authCurrentUserLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authCurrentUserLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
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
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authCurrentUserLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authCurrentUserLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
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
abstract class $AuthResetPasswordRequestedCopyWith<$Res> {
  factory $AuthResetPasswordRequestedCopyWith(AuthResetPasswordRequested value,
          $Res Function(AuthResetPasswordRequested) then) =
      _$AuthResetPasswordRequestedCopyWithImpl<$Res>;
  $Res call({String userEmail});
}

/// @nodoc
class _$AuthResetPasswordRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthResetPasswordRequestedCopyWith<$Res> {
  _$AuthResetPasswordRequestedCopyWithImpl(AuthResetPasswordRequested _value,
      $Res Function(AuthResetPasswordRequested) _then)
      : super(_value, (v) => _then(v as AuthResetPasswordRequested));

  @override
  AuthResetPasswordRequested get _value =>
      super._value as AuthResetPasswordRequested;

  @override
  $Res call({
    Object? userEmail = freezed,
  }) {
    return _then(AuthResetPasswordRequested(
      userEmail: userEmail == freezed
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthResetPasswordRequested implements AuthResetPasswordRequested {
  const _$AuthResetPasswordRequested({required this.userEmail});

  @override
  final String userEmail;

  @override
  String toString() {
    return 'AuthEvent.authResetPasswordRequested(userEmail: $userEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthResetPasswordRequested &&
            const DeepCollectionEquality().equals(other.userEmail, userEmail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userEmail));

  @JsonKey(ignore: true)
  @override
  $AuthResetPasswordRequestedCopyWith<AuthResetPasswordRequested>
      get copyWith =>
          _$AuthResetPasswordRequestedCopyWithImpl<AuthResetPasswordRequested>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) authLoginRequested,
    required TResult Function(User user) authSignUpRequested,
    required TResult Function(SuspendedAccount suspendedAccountException)
        authCurrentAccountSuspended,
    required TResult Function() authLoginAnonymouslyRequested,
    required TResult Function() authLogoutRequested,
    required TResult Function() authGetUpdatedUserDataRequested,
    required TResult Function() authCurrentUserLoaded,
    required TResult Function(String userEmail) authResetPasswordRequested,
  }) {
    return authResetPasswordRequested(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
  }) {
    return authResetPasswordRequested?.call(userEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? authLoginRequested,
    TResult Function(User user)? authSignUpRequested,
    TResult Function(SuspendedAccount suspendedAccountException)?
        authCurrentAccountSuspended,
    TResult Function()? authLoginAnonymouslyRequested,
    TResult Function()? authLogoutRequested,
    TResult Function()? authGetUpdatedUserDataRequested,
    TResult Function()? authCurrentUserLoaded,
    TResult Function(String userEmail)? authResetPasswordRequested,
    required TResult orElse(),
  }) {
    if (authResetPasswordRequested != null) {
      return authResetPasswordRequested(userEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthLoginRequested value) authLoginRequested,
    required TResult Function(AuthSignUpRequested value) authSignUpRequested,
    required TResult Function(AuthCurrentAccountSuspended value)
        authCurrentAccountSuspended,
    required TResult Function(AuthLoginAnonymouslyRequested value)
        authLoginAnonymouslyRequested,
    required TResult Function(AuthLogoutRequested value) authLogoutRequested,
    required TResult Function(AuthGetUpdatedUserDataRequested value)
        authGetUpdatedUserDataRequested,
    required TResult Function(AuthCurrentUserLoaded value)
        authCurrentUserLoaded,
    required TResult Function(AuthResetPasswordRequested value)
        authResetPasswordRequested,
  }) {
    return authResetPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
  }) {
    return authResetPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthLoginRequested value)? authLoginRequested,
    TResult Function(AuthSignUpRequested value)? authSignUpRequested,
    TResult Function(AuthCurrentAccountSuspended value)?
        authCurrentAccountSuspended,
    TResult Function(AuthLoginAnonymouslyRequested value)?
        authLoginAnonymouslyRequested,
    TResult Function(AuthLogoutRequested value)? authLogoutRequested,
    TResult Function(AuthGetUpdatedUserDataRequested value)?
        authGetUpdatedUserDataRequested,
    TResult Function(AuthCurrentUserLoaded value)? authCurrentUserLoaded,
    TResult Function(AuthResetPasswordRequested value)?
        authResetPasswordRequested,
    required TResult orElse(),
  }) {
    if (authResetPasswordRequested != null) {
      return authResetPasswordRequested(this);
    }
    return orElse();
  }
}

abstract class AuthResetPasswordRequested implements AuthEvent {
  const factory AuthResetPasswordRequested({required String userEmail}) =
      _$AuthResetPasswordRequested;

  String get userEmail;
  @JsonKey(ignore: true)
  $AuthResetPasswordRequestedCopyWith<AuthResetPasswordRequested>
      get copyWith => throw _privateConstructorUsedError;
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

  AuthCurrentUserLoadSuccess authCurrentUserLoadSuccess(User user) {
    return AuthCurrentUserLoadSuccess(
      user,
    );
  }

  AuthLoggedInSuccess authLoggedInSuccess(User user) {
    return AuthLoggedInSuccess(
      user,
    );
  }

  AuthSignUpSuccess authSignUpSuccess(User user) {
    return AuthSignUpSuccess(
      user,
    );
  }

  AuthLogoutSuccess authLogoutSuccess() {
    return const AuthLogoutSuccess();
  }

  AuthPasswordResetSendSuccess authPasswordResetSendSuccess() {
    return const AuthPasswordResetSendSuccess();
  }

  AuthLoadFailure authLoadFailure(ExceptionBase exception) {
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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
abstract class $AuthCurrentUserLoadSuccessCopyWith<$Res> {
  factory $AuthCurrentUserLoadSuccessCopyWith(AuthCurrentUserLoadSuccess value,
          $Res Function(AuthCurrentUserLoadSuccess) then) =
      _$AuthCurrentUserLoadSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthCurrentUserLoadSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthCurrentUserLoadSuccessCopyWith<$Res> {
  _$AuthCurrentUserLoadSuccessCopyWithImpl(AuthCurrentUserLoadSuccess _value,
      $Res Function(AuthCurrentUserLoadSuccess) _then)
      : super(_value, (v) => _then(v as AuthCurrentUserLoadSuccess));

  @override
  AuthCurrentUserLoadSuccess get _value =>
      super._value as AuthCurrentUserLoadSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthCurrentUserLoadSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthCurrentUserLoadSuccess implements AuthCurrentUserLoadSuccess {
  const _$AuthCurrentUserLoadSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authCurrentUserLoadSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthCurrentUserLoadSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthCurrentUserLoadSuccessCopyWith<AuthCurrentUserLoadSuccess>
      get copyWith =>
          _$AuthCurrentUserLoadSuccessCopyWithImpl<AuthCurrentUserLoadSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authCurrentUserLoadSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authCurrentUserLoadSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authCurrentUserLoadSuccess != null) {
      return authCurrentUserLoadSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authCurrentUserLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authCurrentUserLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authCurrentUserLoadSuccess != null) {
      return authCurrentUserLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthCurrentUserLoadSuccess implements AuthState {
  const factory AuthCurrentUserLoadSuccess(User user) =
      _$AuthCurrentUserLoadSuccess;

  User get user;
  @JsonKey(ignore: true)
  $AuthCurrentUserLoadSuccessCopyWith<AuthCurrentUserLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authLoggedInSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authLoggedInSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoggedInSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoggedInSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
abstract class $AuthSignUpSuccessCopyWith<$Res> {
  factory $AuthSignUpSuccessCopyWith(
          AuthSignUpSuccess value, $Res Function(AuthSignUpSuccess) then) =
      _$AuthSignUpSuccessCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class _$AuthSignUpSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthSignUpSuccessCopyWith<$Res> {
  _$AuthSignUpSuccessCopyWithImpl(
      AuthSignUpSuccess _value, $Res Function(AuthSignUpSuccess) _then)
      : super(_value, (v) => _then(v as AuthSignUpSuccess));

  @override
  AuthSignUpSuccess get _value => super._value as AuthSignUpSuccess;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(AuthSignUpSuccess(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$AuthSignUpSuccess implements AuthSignUpSuccess {
  const _$AuthSignUpSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authSignUpSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSignUpSuccess &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $AuthSignUpSuccessCopyWith<AuthSignUpSuccess> get copyWith =>
      _$AuthSignUpSuccessCopyWithImpl<AuthSignUpSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authSignUpSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authSignUpSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authSignUpSuccess != null) {
      return authSignUpSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authSignUpSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authSignUpSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authSignUpSuccess != null) {
      return authSignUpSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthSignUpSuccess implements AuthState {
  const factory AuthSignUpSuccess(User user) = _$AuthSignUpSuccess;

  User get user;
  @JsonKey(ignore: true)
  $AuthSignUpSuccessCopyWith<AuthSignUpSuccess> get copyWith =>
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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authLogoutSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authLogoutSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLogoutSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLogoutSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
abstract class $AuthPasswordResetSendSuccessCopyWith<$Res> {
  factory $AuthPasswordResetSendSuccessCopyWith(
          AuthPasswordResetSendSuccess value,
          $Res Function(AuthPasswordResetSendSuccess) then) =
      _$AuthPasswordResetSendSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthPasswordResetSendSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthPasswordResetSendSuccessCopyWith<$Res> {
  _$AuthPasswordResetSendSuccessCopyWithImpl(
      AuthPasswordResetSendSuccess _value,
      $Res Function(AuthPasswordResetSendSuccess) _then)
      : super(_value, (v) => _then(v as AuthPasswordResetSendSuccess));

  @override
  AuthPasswordResetSendSuccess get _value =>
      super._value as AuthPasswordResetSendSuccess;
}

/// @nodoc

class _$AuthPasswordResetSendSuccess implements AuthPasswordResetSendSuccess {
  const _$AuthPasswordResetSendSuccess();

  @override
  String toString() {
    return 'AuthState.authPasswordResetSendSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthPasswordResetSendSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authInitial,
    required TResult Function() authInProgress,
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authPasswordResetSendSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authPasswordResetSendSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authPasswordResetSendSuccess != null) {
      return authPasswordResetSendSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthInitial value) authInitial,
    required TResult Function(AuthInProgress value) authInProgress,
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authPasswordResetSendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authPasswordResetSendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
    required TResult orElse(),
  }) {
    if (authPasswordResetSendSuccess != null) {
      return authPasswordResetSendSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthPasswordResetSendSuccess implements AuthState {
  const factory AuthPasswordResetSendSuccess() = _$AuthPasswordResetSendSuccess;
}

/// @nodoc
abstract class $AuthLoadFailureCopyWith<$Res> {
  factory $AuthLoadFailureCopyWith(
          AuthLoadFailure value, $Res Function(AuthLoadFailure) then) =
      _$AuthLoadFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase exception});
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
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$AuthLoadFailure implements AuthLoadFailure {
  const _$AuthLoadFailure(this.exception);

  @override
  final ExceptionBase exception;

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
    required TResult Function(User user) authCurrentUserLoadSuccess,
    required TResult Function(User user) authLoggedInSuccess,
    required TResult Function(User user) authSignUpSuccess,
    required TResult Function() authLogoutSuccess,
    required TResult Function() authPasswordResetSendSuccess,
    required TResult Function(ExceptionBase exception) authLoadFailure,
  }) {
    return authLoadFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
  }) {
    return authLoadFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authInitial,
    TResult Function()? authInProgress,
    TResult Function(User user)? authCurrentUserLoadSuccess,
    TResult Function(User user)? authLoggedInSuccess,
    TResult Function(User user)? authSignUpSuccess,
    TResult Function()? authLogoutSuccess,
    TResult Function()? authPasswordResetSendSuccess,
    TResult Function(ExceptionBase exception)? authLoadFailure,
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
    required TResult Function(AuthCurrentUserLoadSuccess value)
        authCurrentUserLoadSuccess,
    required TResult Function(AuthLoggedInSuccess value) authLoggedInSuccess,
    required TResult Function(AuthSignUpSuccess value) authSignUpSuccess,
    required TResult Function(AuthLogoutSuccess value) authLogoutSuccess,
    required TResult Function(AuthPasswordResetSendSuccess value)
        authPasswordResetSendSuccess,
    required TResult Function(AuthLoadFailure value) authLoadFailure,
  }) {
    return authLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
    TResult Function(AuthLoadFailure value)? authLoadFailure,
  }) {
    return authLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthInitial value)? authInitial,
    TResult Function(AuthInProgress value)? authInProgress,
    TResult Function(AuthCurrentUserLoadSuccess value)?
        authCurrentUserLoadSuccess,
    TResult Function(AuthLoggedInSuccess value)? authLoggedInSuccess,
    TResult Function(AuthSignUpSuccess value)? authSignUpSuccess,
    TResult Function(AuthLogoutSuccess value)? authLogoutSuccess,
    TResult Function(AuthPasswordResetSendSuccess value)?
        authPasswordResetSendSuccess,
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
  const factory AuthLoadFailure(ExceptionBase exception) = _$AuthLoadFailure;

  ExceptionBase get exception;
  @JsonKey(ignore: true)
  $AuthLoadFailureCopyWith<AuthLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
