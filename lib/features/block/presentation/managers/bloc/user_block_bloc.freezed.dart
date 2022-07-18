// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_block_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserBlockEventTearOff {
  const _$UserBlockEventTearOff();

  UserBlockBlocked blocked(String remoteUserId) {
    return UserBlockBlocked(
      remoteUserId,
    );
  }

  UserBlockUnblocked unblocked(String remoteUserId) {
    return UserBlockUnblocked(
      remoteUserId,
    );
  }
}

/// @nodoc
const $UserBlockEvent = _$UserBlockEventTearOff();

/// @nodoc
mixin _$UserBlockEvent {
  String get remoteUserId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String remoteUserId) blocked,
    required TResult Function(String remoteUserId) unblocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockBlocked value) blocked,
    required TResult Function(UserBlockUnblocked value) unblocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserBlockEventCopyWith<UserBlockEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockEventCopyWith<$Res> {
  factory $UserBlockEventCopyWith(
          UserBlockEvent value, $Res Function(UserBlockEvent) then) =
      _$UserBlockEventCopyWithImpl<$Res>;
  $Res call({String remoteUserId});
}

/// @nodoc
class _$UserBlockEventCopyWithImpl<$Res>
    implements $UserBlockEventCopyWith<$Res> {
  _$UserBlockEventCopyWithImpl(this._value, this._then);

  final UserBlockEvent _value;
  // ignore: unused_field
  final $Res Function(UserBlockEvent) _then;

  @override
  $Res call({
    Object? remoteUserId = freezed,
  }) {
    return _then(_value.copyWith(
      remoteUserId: remoteUserId == freezed
          ? _value.remoteUserId
          : remoteUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserBlockBlockedCopyWith<$Res>
    implements $UserBlockEventCopyWith<$Res> {
  factory $UserBlockBlockedCopyWith(
          UserBlockBlocked value, $Res Function(UserBlockBlocked) then) =
      _$UserBlockBlockedCopyWithImpl<$Res>;
  @override
  $Res call({String remoteUserId});
}

/// @nodoc
class _$UserBlockBlockedCopyWithImpl<$Res>
    extends _$UserBlockEventCopyWithImpl<$Res>
    implements $UserBlockBlockedCopyWith<$Res> {
  _$UserBlockBlockedCopyWithImpl(
      UserBlockBlocked _value, $Res Function(UserBlockBlocked) _then)
      : super(_value, (v) => _then(v as UserBlockBlocked));

  @override
  UserBlockBlocked get _value => super._value as UserBlockBlocked;

  @override
  $Res call({
    Object? remoteUserId = freezed,
  }) {
    return _then(UserBlockBlocked(
      remoteUserId == freezed
          ? _value.remoteUserId
          : remoteUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserBlockBlocked implements UserBlockBlocked {
  const _$UserBlockBlocked(this.remoteUserId);

  @override
  final String remoteUserId;

  @override
  String toString() {
    return 'UserBlockEvent.blocked(remoteUserId: $remoteUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserBlockBlocked &&
            const DeepCollectionEquality()
                .equals(other.remoteUserId, remoteUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(remoteUserId));

  @JsonKey(ignore: true)
  @override
  $UserBlockBlockedCopyWith<UserBlockBlocked> get copyWith =>
      _$UserBlockBlockedCopyWithImpl<UserBlockBlocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String remoteUserId) blocked,
    required TResult Function(String remoteUserId) unblocked,
  }) {
    return blocked(remoteUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
  }) {
    return blocked?.call(remoteUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(remoteUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockBlocked value) blocked,
    required TResult Function(UserBlockUnblocked value) unblocked,
  }) {
    return blocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
  }) {
    return blocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
    required TResult orElse(),
  }) {
    if (blocked != null) {
      return blocked(this);
    }
    return orElse();
  }
}

abstract class UserBlockBlocked implements UserBlockEvent {
  const factory UserBlockBlocked(String remoteUserId) = _$UserBlockBlocked;

  @override
  String get remoteUserId;
  @override
  @JsonKey(ignore: true)
  $UserBlockBlockedCopyWith<UserBlockBlocked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockUnblockedCopyWith<$Res>
    implements $UserBlockEventCopyWith<$Res> {
  factory $UserBlockUnblockedCopyWith(
          UserBlockUnblocked value, $Res Function(UserBlockUnblocked) then) =
      _$UserBlockUnblockedCopyWithImpl<$Res>;
  @override
  $Res call({String remoteUserId});
}

/// @nodoc
class _$UserBlockUnblockedCopyWithImpl<$Res>
    extends _$UserBlockEventCopyWithImpl<$Res>
    implements $UserBlockUnblockedCopyWith<$Res> {
  _$UserBlockUnblockedCopyWithImpl(
      UserBlockUnblocked _value, $Res Function(UserBlockUnblocked) _then)
      : super(_value, (v) => _then(v as UserBlockUnblocked));

  @override
  UserBlockUnblocked get _value => super._value as UserBlockUnblocked;

  @override
  $Res call({
    Object? remoteUserId = freezed,
  }) {
    return _then(UserBlockUnblocked(
      remoteUserId == freezed
          ? _value.remoteUserId
          : remoteUserId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserBlockUnblocked implements UserBlockUnblocked {
  const _$UserBlockUnblocked(this.remoteUserId);

  @override
  final String remoteUserId;

  @override
  String toString() {
    return 'UserBlockEvent.unblocked(remoteUserId: $remoteUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserBlockUnblocked &&
            const DeepCollectionEquality()
                .equals(other.remoteUserId, remoteUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(remoteUserId));

  @JsonKey(ignore: true)
  @override
  $UserBlockUnblockedCopyWith<UserBlockUnblocked> get copyWith =>
      _$UserBlockUnblockedCopyWithImpl<UserBlockUnblocked>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String remoteUserId) blocked,
    required TResult Function(String remoteUserId) unblocked,
  }) {
    return unblocked(remoteUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
  }) {
    return unblocked?.call(remoteUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String remoteUserId)? blocked,
    TResult Function(String remoteUserId)? unblocked,
    required TResult orElse(),
  }) {
    if (unblocked != null) {
      return unblocked(remoteUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockBlocked value) blocked,
    required TResult Function(UserBlockUnblocked value) unblocked,
  }) {
    return unblocked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
  }) {
    return unblocked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockBlocked value)? blocked,
    TResult Function(UserBlockUnblocked value)? unblocked,
    required TResult orElse(),
  }) {
    if (unblocked != null) {
      return unblocked(this);
    }
    return orElse();
  }
}

abstract class UserBlockUnblocked implements UserBlockEvent {
  const factory UserBlockUnblocked(String remoteUserId) = _$UserBlockUnblocked;

  @override
  String get remoteUserId;
  @override
  @JsonKey(ignore: true)
  $UserBlockUnblockedCopyWith<UserBlockUnblocked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserBlockStateTearOff {
  const _$UserBlockStateTearOff();

  UserBlockInitial initial() {
    return const UserBlockInitial();
  }

  UserBlockInProgress inProgress() {
    return const UserBlockInProgress();
  }

  UserBlockBlockSuccess blockSuccess() {
    return const UserBlockBlockSuccess();
  }

  UserBlockUnblockSuccess unblockSuccess() {
    return const UserBlockUnblockSuccess();
  }

  UserBlockBlockFailure blockFailure(ServerException error) {
    return UserBlockBlockFailure(
      error,
    );
  }

  UserBlockUnblockFailure unblockFailure(ServerException error) {
    return UserBlockUnblockFailure(
      error,
    );
  }
}

/// @nodoc
const $UserBlockState = _$UserBlockStateTearOff();

/// @nodoc
mixin _$UserBlockState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockStateCopyWith<$Res> {
  factory $UserBlockStateCopyWith(
          UserBlockState value, $Res Function(UserBlockState) then) =
      _$UserBlockStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockStateCopyWith<$Res> {
  _$UserBlockStateCopyWithImpl(this._value, this._then);

  final UserBlockState _value;
  // ignore: unused_field
  final $Res Function(UserBlockState) _then;
}

/// @nodoc
abstract class $UserBlockInitialCopyWith<$Res> {
  factory $UserBlockInitialCopyWith(
          UserBlockInitial value, $Res Function(UserBlockInitial) then) =
      _$UserBlockInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlockInitialCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockInitialCopyWith<$Res> {
  _$UserBlockInitialCopyWithImpl(
      UserBlockInitial _value, $Res Function(UserBlockInitial) _then)
      : super(_value, (v) => _then(v as UserBlockInitial));

  @override
  UserBlockInitial get _value => super._value as UserBlockInitial;
}

/// @nodoc

class _$UserBlockInitial implements UserBlockInitial {
  const _$UserBlockInitial();

  @override
  String toString() {
    return 'UserBlockState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserBlockInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
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
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserBlockInitial implements UserBlockState {
  const factory UserBlockInitial() = _$UserBlockInitial;
}

/// @nodoc
abstract class $UserBlockInProgressCopyWith<$Res> {
  factory $UserBlockInProgressCopyWith(
          UserBlockInProgress value, $Res Function(UserBlockInProgress) then) =
      _$UserBlockInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlockInProgressCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockInProgressCopyWith<$Res> {
  _$UserBlockInProgressCopyWithImpl(
      UserBlockInProgress _value, $Res Function(UserBlockInProgress) _then)
      : super(_value, (v) => _then(v as UserBlockInProgress));

  @override
  UserBlockInProgress get _value => super._value as UserBlockInProgress;
}

/// @nodoc

class _$UserBlockInProgress implements UserBlockInProgress {
  const _$UserBlockInProgress();

  @override
  String toString() {
    return 'UserBlockState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserBlockInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
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
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class UserBlockInProgress implements UserBlockState {
  const factory UserBlockInProgress() = _$UserBlockInProgress;
}

/// @nodoc
abstract class $UserBlockBlockSuccessCopyWith<$Res> {
  factory $UserBlockBlockSuccessCopyWith(UserBlockBlockSuccess value,
          $Res Function(UserBlockBlockSuccess) then) =
      _$UserBlockBlockSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlockBlockSuccessCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockBlockSuccessCopyWith<$Res> {
  _$UserBlockBlockSuccessCopyWithImpl(
      UserBlockBlockSuccess _value, $Res Function(UserBlockBlockSuccess) _then)
      : super(_value, (v) => _then(v as UserBlockBlockSuccess));

  @override
  UserBlockBlockSuccess get _value => super._value as UserBlockBlockSuccess;
}

/// @nodoc

class _$UserBlockBlockSuccess implements UserBlockBlockSuccess {
  const _$UserBlockBlockSuccess();

  @override
  String toString() {
    return 'UserBlockState.blockSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserBlockBlockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return blockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return blockSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
    required TResult orElse(),
  }) {
    if (blockSuccess != null) {
      return blockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return blockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return blockSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (blockSuccess != null) {
      return blockSuccess(this);
    }
    return orElse();
  }
}

abstract class UserBlockBlockSuccess implements UserBlockState {
  const factory UserBlockBlockSuccess() = _$UserBlockBlockSuccess;
}

/// @nodoc
abstract class $UserBlockUnblockSuccessCopyWith<$Res> {
  factory $UserBlockUnblockSuccessCopyWith(UserBlockUnblockSuccess value,
          $Res Function(UserBlockUnblockSuccess) then) =
      _$UserBlockUnblockSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserBlockUnblockSuccessCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockUnblockSuccessCopyWith<$Res> {
  _$UserBlockUnblockSuccessCopyWithImpl(UserBlockUnblockSuccess _value,
      $Res Function(UserBlockUnblockSuccess) _then)
      : super(_value, (v) => _then(v as UserBlockUnblockSuccess));

  @override
  UserBlockUnblockSuccess get _value => super._value as UserBlockUnblockSuccess;
}

/// @nodoc

class _$UserBlockUnblockSuccess implements UserBlockUnblockSuccess {
  const _$UserBlockUnblockSuccess();

  @override
  String toString() {
    return 'UserBlockState.unblockSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserBlockUnblockSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return unblockSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return unblockSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
    required TResult orElse(),
  }) {
    if (unblockSuccess != null) {
      return unblockSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return unblockSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return unblockSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (unblockSuccess != null) {
      return unblockSuccess(this);
    }
    return orElse();
  }
}

abstract class UserBlockUnblockSuccess implements UserBlockState {
  const factory UserBlockUnblockSuccess() = _$UserBlockUnblockSuccess;
}

/// @nodoc
abstract class $UserBlockBlockFailureCopyWith<$Res> {
  factory $UserBlockBlockFailureCopyWith(UserBlockBlockFailure value,
          $Res Function(UserBlockBlockFailure) then) =
      _$UserBlockBlockFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$UserBlockBlockFailureCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockBlockFailureCopyWith<$Res> {
  _$UserBlockBlockFailureCopyWithImpl(
      UserBlockBlockFailure _value, $Res Function(UserBlockBlockFailure) _then)
      : super(_value, (v) => _then(v as UserBlockBlockFailure));

  @override
  UserBlockBlockFailure get _value => super._value as UserBlockBlockFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UserBlockBlockFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$UserBlockBlockFailure implements UserBlockBlockFailure {
  const _$UserBlockBlockFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'UserBlockState.blockFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserBlockBlockFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UserBlockBlockFailureCopyWith<UserBlockBlockFailure> get copyWith =>
      _$UserBlockBlockFailureCopyWithImpl<UserBlockBlockFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return blockFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return blockFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
    required TResult orElse(),
  }) {
    if (blockFailure != null) {
      return blockFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return blockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return blockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (blockFailure != null) {
      return blockFailure(this);
    }
    return orElse();
  }
}

abstract class UserBlockBlockFailure implements UserBlockState {
  const factory UserBlockBlockFailure(ServerException error) =
      _$UserBlockBlockFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $UserBlockBlockFailureCopyWith<UserBlockBlockFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlockUnblockFailureCopyWith<$Res> {
  factory $UserBlockUnblockFailureCopyWith(UserBlockUnblockFailure value,
          $Res Function(UserBlockUnblockFailure) then) =
      _$UserBlockUnblockFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$UserBlockUnblockFailureCopyWithImpl<$Res>
    extends _$UserBlockStateCopyWithImpl<$Res>
    implements $UserBlockUnblockFailureCopyWith<$Res> {
  _$UserBlockUnblockFailureCopyWithImpl(UserBlockUnblockFailure _value,
      $Res Function(UserBlockUnblockFailure) _then)
      : super(_value, (v) => _then(v as UserBlockUnblockFailure));

  @override
  UserBlockUnblockFailure get _value => super._value as UserBlockUnblockFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UserBlockUnblockFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$UserBlockUnblockFailure implements UserBlockUnblockFailure {
  const _$UserBlockUnblockFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'UserBlockState.unblockFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserBlockUnblockFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UserBlockUnblockFailureCopyWith<UserBlockUnblockFailure> get copyWith =>
      _$UserBlockUnblockFailureCopyWithImpl<UserBlockUnblockFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() blockSuccess,
    required TResult Function() unblockSuccess,
    required TResult Function(ServerException error) blockFailure,
    required TResult Function(ServerException error) unblockFailure,
  }) {
    return unblockFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
  }) {
    return unblockFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? blockSuccess,
    TResult Function()? unblockSuccess,
    TResult Function(ServerException error)? blockFailure,
    TResult Function(ServerException error)? unblockFailure,
    required TResult orElse(),
  }) {
    if (unblockFailure != null) {
      return unblockFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserBlockInitial value) initial,
    required TResult Function(UserBlockInProgress value) inProgress,
    required TResult Function(UserBlockBlockSuccess value) blockSuccess,
    required TResult Function(UserBlockUnblockSuccess value) unblockSuccess,
    required TResult Function(UserBlockBlockFailure value) blockFailure,
    required TResult Function(UserBlockUnblockFailure value) unblockFailure,
  }) {
    return unblockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
  }) {
    return unblockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserBlockInitial value)? initial,
    TResult Function(UserBlockInProgress value)? inProgress,
    TResult Function(UserBlockBlockSuccess value)? blockSuccess,
    TResult Function(UserBlockUnblockSuccess value)? unblockSuccess,
    TResult Function(UserBlockBlockFailure value)? blockFailure,
    TResult Function(UserBlockUnblockFailure value)? unblockFailure,
    required TResult orElse(),
  }) {
    if (unblockFailure != null) {
      return unblockFailure(this);
    }
    return orElse();
  }
}

abstract class UserBlockUnblockFailure implements UserBlockState {
  const factory UserBlockUnblockFailure(ServerException error) =
      _$UserBlockUnblockFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $UserBlockUnblockFailureCopyWith<UserBlockUnblockFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
