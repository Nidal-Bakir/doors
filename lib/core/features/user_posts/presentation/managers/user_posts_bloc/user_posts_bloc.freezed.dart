// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserPostsEventTearOff {
  const _$UserPostsEventTearOff();

  UserPostsLoaded loaded(String userId) {
    return UserPostsLoaded(
      userId,
    );
  }

  UserPostsRefreshed refreshed(String userId) {
    return UserPostsRefreshed(
      userId,
    );
  }
}

/// @nodoc
const $UserPostsEvent = _$UserPostsEventTearOff();

/// @nodoc
mixin _$UserPostsEvent {
  String get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loaded,
    required TResult Function(String userId) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsLoaded value) loaded,
    required TResult Function(UserPostsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPostsEventCopyWith<UserPostsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsEventCopyWith<$Res> {
  factory $UserPostsEventCopyWith(
          UserPostsEvent value, $Res Function(UserPostsEvent) then) =
      _$UserPostsEventCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$UserPostsEventCopyWithImpl<$Res>
    implements $UserPostsEventCopyWith<$Res> {
  _$UserPostsEventCopyWithImpl(this._value, this._then);

  final UserPostsEvent _value;
  // ignore: unused_field
  final $Res Function(UserPostsEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserPostsLoadedCopyWith<$Res>
    implements $UserPostsEventCopyWith<$Res> {
  factory $UserPostsLoadedCopyWith(
          UserPostsLoaded value, $Res Function(UserPostsLoaded) then) =
      _$UserPostsLoadedCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class _$UserPostsLoadedCopyWithImpl<$Res>
    extends _$UserPostsEventCopyWithImpl<$Res>
    implements $UserPostsLoadedCopyWith<$Res> {
  _$UserPostsLoadedCopyWithImpl(
      UserPostsLoaded _value, $Res Function(UserPostsLoaded) _then)
      : super(_value, (v) => _then(v as UserPostsLoaded));

  @override
  UserPostsLoaded get _value => super._value as UserPostsLoaded;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(UserPostsLoaded(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserPostsLoaded implements UserPostsLoaded {
  const _$UserPostsLoaded(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserPostsEvent.loaded(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPostsLoaded &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $UserPostsLoadedCopyWith<UserPostsLoaded> get copyWith =>
      _$UserPostsLoadedCopyWithImpl<UserPostsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loaded,
    required TResult Function(String userId) refreshed,
  }) {
    return loaded(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
  }) {
    return loaded?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsLoaded value) loaded,
    required TResult Function(UserPostsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserPostsLoaded implements UserPostsEvent {
  const factory UserPostsLoaded(String userId) = _$UserPostsLoaded;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  $UserPostsLoadedCopyWith<UserPostsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsRefreshedCopyWith<$Res>
    implements $UserPostsEventCopyWith<$Res> {
  factory $UserPostsRefreshedCopyWith(
          UserPostsRefreshed value, $Res Function(UserPostsRefreshed) then) =
      _$UserPostsRefreshedCopyWithImpl<$Res>;
  @override
  $Res call({String userId});
}

/// @nodoc
class _$UserPostsRefreshedCopyWithImpl<$Res>
    extends _$UserPostsEventCopyWithImpl<$Res>
    implements $UserPostsRefreshedCopyWith<$Res> {
  _$UserPostsRefreshedCopyWithImpl(
      UserPostsRefreshed _value, $Res Function(UserPostsRefreshed) _then)
      : super(_value, (v) => _then(v as UserPostsRefreshed));

  @override
  UserPostsRefreshed get _value => super._value as UserPostsRefreshed;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(UserPostsRefreshed(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserPostsRefreshed implements UserPostsRefreshed {
  const _$UserPostsRefreshed(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserPostsEvent.refreshed(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPostsRefreshed &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $UserPostsRefreshedCopyWith<UserPostsRefreshed> get copyWith =>
      _$UserPostsRefreshedCopyWithImpl<UserPostsRefreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loaded,
    required TResult Function(String userId) refreshed,
  }) {
    return refreshed(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
  }) {
    return refreshed?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loaded,
    TResult Function(String userId)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsLoaded value) loaded,
    required TResult Function(UserPostsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsLoaded value)? loaded,
    TResult Function(UserPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class UserPostsRefreshed implements UserPostsEvent {
  const factory UserPostsRefreshed(String userId) = _$UserPostsRefreshed;

  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  $UserPostsRefreshedCopyWith<UserPostsRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserPostsStateTearOff {
  const _$UserPostsStateTearOff();

  UserPostsInProgress inProgress() {
    return const UserPostsInProgress();
  }

  UserPostsLoadSuccess loadSuccess(UnmodifiableListView<ServicePost> userPosts) {
    return UserPostsLoadSuccess(
      userPosts,
    );
  }

  UserPostsLoadFailure loadFailure(
      ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts) {
    return UserPostsLoadFailure(
      error,
      cachedUserPosts,
    );
  }
}

/// @nodoc
const $UserPostsState = _$UserPostsStateTearOff();

/// @nodoc
mixin _$UserPostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ServicePost> userPosts) loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsInProgress value) inProgress,
    required TResult Function(UserPostsLoadSuccess value) loadSuccess,
    required TResult Function(UserPostsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsStateCopyWith<$Res> {
  factory $UserPostsStateCopyWith(
          UserPostsState value, $Res Function(UserPostsState) then) =
      _$UserPostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPostsStateCopyWithImpl<$Res>
    implements $UserPostsStateCopyWith<$Res> {
  _$UserPostsStateCopyWithImpl(this._value, this._then);

  final UserPostsState _value;
  // ignore: unused_field
  final $Res Function(UserPostsState) _then;
}

/// @nodoc
abstract class $UserPostsInProgressCopyWith<$Res> {
  factory $UserPostsInProgressCopyWith(
          UserPostsInProgress value, $Res Function(UserPostsInProgress) then) =
      _$UserPostsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPostsInProgressCopyWithImpl<$Res>
    extends _$UserPostsStateCopyWithImpl<$Res>
    implements $UserPostsInProgressCopyWith<$Res> {
  _$UserPostsInProgressCopyWithImpl(
      UserPostsInProgress _value, $Res Function(UserPostsInProgress) _then)
      : super(_value, (v) => _then(v as UserPostsInProgress));

  @override
  UserPostsInProgress get _value => super._value as UserPostsInProgress;
}

/// @nodoc

class _$UserPostsInProgress implements UserPostsInProgress {
  const _$UserPostsInProgress();

  @override
  String toString() {
    return 'UserPostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserPostsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ServicePost> userPosts) loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
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
    required TResult Function(UserPostsInProgress value) inProgress,
    required TResult Function(UserPostsLoadSuccess value) loadSuccess,
    required TResult Function(UserPostsLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class UserPostsInProgress implements UserPostsState {
  const factory UserPostsInProgress() = _$UserPostsInProgress;
}

/// @nodoc
abstract class $UserPostsLoadSuccessCopyWith<$Res> {
  factory $UserPostsLoadSuccessCopyWith(UserPostsLoadSuccess value,
          $Res Function(UserPostsLoadSuccess) then) =
      _$UserPostsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<ServicePost> userPosts});
}

/// @nodoc
class _$UserPostsLoadSuccessCopyWithImpl<$Res>
    extends _$UserPostsStateCopyWithImpl<$Res>
    implements $UserPostsLoadSuccessCopyWith<$Res> {
  _$UserPostsLoadSuccessCopyWithImpl(
      UserPostsLoadSuccess _value, $Res Function(UserPostsLoadSuccess) _then)
      : super(_value, (v) => _then(v as UserPostsLoadSuccess));

  @override
  UserPostsLoadSuccess get _value => super._value as UserPostsLoadSuccess;

  @override
  $Res call({
    Object? userPosts = freezed,
  }) {
    return _then(UserPostsLoadSuccess(
      userPosts == freezed
          ? _value.userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$UserPostsLoadSuccess implements UserPostsLoadSuccess {
  const _$UserPostsLoadSuccess(this.userPosts);

  @override
  final UnmodifiableListView<ServicePost> userPosts;

  @override
  String toString() {
    return 'UserPostsState.loadSuccess(userPosts: $userPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPostsLoadSuccess &&
            const DeepCollectionEquality().equals(other.userPosts, userPosts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userPosts));

  @JsonKey(ignore: true)
  @override
  $UserPostsLoadSuccessCopyWith<UserPostsLoadSuccess> get copyWith =>
      _$UserPostsLoadSuccessCopyWithImpl<UserPostsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ServicePost> userPosts) loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)
        loadFailure,
  }) {
    return loadSuccess(userPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(userPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(userPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsInProgress value) inProgress,
    required TResult Function(UserPostsLoadSuccess value) loadSuccess,
    required TResult Function(UserPostsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UserPostsLoadSuccess implements UserPostsState {
  const factory UserPostsLoadSuccess(UnmodifiableListView<ServicePost> userPosts) =
      _$UserPostsLoadSuccess;

  UnmodifiableListView<ServicePost> get userPosts;
  @JsonKey(ignore: true)
  $UserPostsLoadSuccessCopyWith<UserPostsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPostsLoadFailureCopyWith<$Res> {
  factory $UserPostsLoadFailureCopyWith(UserPostsLoadFailure value,
          $Res Function(UserPostsLoadFailure) then) =
      _$UserPostsLoadFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts});
}

/// @nodoc
class _$UserPostsLoadFailureCopyWithImpl<$Res>
    extends _$UserPostsStateCopyWithImpl<$Res>
    implements $UserPostsLoadFailureCopyWith<$Res> {
  _$UserPostsLoadFailureCopyWithImpl(
      UserPostsLoadFailure _value, $Res Function(UserPostsLoadFailure) _then)
      : super(_value, (v) => _then(v as UserPostsLoadFailure));

  @override
  UserPostsLoadFailure get _value => super._value as UserPostsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedUserPosts = freezed,
  }) {
    return _then(UserPostsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
      cachedUserPosts == freezed
          ? _value.cachedUserPosts
          : cachedUserPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$UserPostsLoadFailure implements UserPostsLoadFailure {
  const _$UserPostsLoadFailure(this.error, this.cachedUserPosts);

  @override
  final ExceptionBase error;
  @override
  final UnmodifiableListView<ServicePost> cachedUserPosts;

  @override
  String toString() {
    return 'UserPostsState.loadFailure(error: $error, cachedUserPosts: $cachedUserPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPostsLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.cachedUserPosts, cachedUserPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cachedUserPosts));

  @JsonKey(ignore: true)
  @override
  $UserPostsLoadFailureCopyWith<UserPostsLoadFailure> get copyWith =>
      _$UserPostsLoadFailureCopyWithImpl<UserPostsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ServicePost> userPosts) loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedUserPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedUserPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> userPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error, cachedUserPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserPostsInProgress value) inProgress,
    required TResult Function(UserPostsLoadSuccess value) loadSuccess,
    required TResult Function(UserPostsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserPostsInProgress value)? inProgress,
    TResult Function(UserPostsLoadSuccess value)? loadSuccess,
    TResult Function(UserPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UserPostsLoadFailure implements UserPostsState {
  const factory UserPostsLoadFailure(
          ExceptionBase error, UnmodifiableListView<ServicePost> cachedUserPosts) =
      _$UserPostsLoadFailure;

  ExceptionBase get error;
  UnmodifiableListView<ServicePost> get cachedUserPosts;
  @JsonKey(ignore: true)
  $UserPostsLoadFailureCopyWith<UserPostsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
