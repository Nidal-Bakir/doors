// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecentPostsEventTearOff {
  const _$RecentPostsEventTearOff();

  RecentPostsLoaded loaded() {
    return const RecentPostsLoaded();
  }

  RecentPostsRefreshed refreshed() {
    return const RecentPostsRefreshed();
  }
}

/// @nodoc
const $RecentPostsEvent = _$RecentPostsEventTearOff();

/// @nodoc
mixin _$RecentPostsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsLoaded value) loaded,
    required TResult Function(RecentPostsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentPostsEventCopyWith<$Res> {
  factory $RecentPostsEventCopyWith(
          RecentPostsEvent value, $Res Function(RecentPostsEvent) then) =
      _$RecentPostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentPostsEventCopyWithImpl<$Res>
    implements $RecentPostsEventCopyWith<$Res> {
  _$RecentPostsEventCopyWithImpl(this._value, this._then);

  final RecentPostsEvent _value;
  // ignore: unused_field
  final $Res Function(RecentPostsEvent) _then;
}

/// @nodoc
abstract class $RecentPostsLoadedCopyWith<$Res> {
  factory $RecentPostsLoadedCopyWith(
          RecentPostsLoaded value, $Res Function(RecentPostsLoaded) then) =
      _$RecentPostsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentPostsLoadedCopyWithImpl<$Res>
    extends _$RecentPostsEventCopyWithImpl<$Res>
    implements $RecentPostsLoadedCopyWith<$Res> {
  _$RecentPostsLoadedCopyWithImpl(
      RecentPostsLoaded _value, $Res Function(RecentPostsLoaded) _then)
      : super(_value, (v) => _then(v as RecentPostsLoaded));

  @override
  RecentPostsLoaded get _value => super._value as RecentPostsLoaded;
}

/// @nodoc

class _$RecentPostsLoaded implements RecentPostsLoaded {
  const _$RecentPostsLoaded();

  @override
  String toString() {
    return 'RecentPostsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentPostsLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshed,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsLoaded value) loaded,
    required TResult Function(RecentPostsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecentPostsLoaded implements RecentPostsEvent {
  const factory RecentPostsLoaded() = _$RecentPostsLoaded;
}

/// @nodoc
abstract class $RecentPostsRefreshedCopyWith<$Res> {
  factory $RecentPostsRefreshedCopyWith(RecentPostsRefreshed value,
          $Res Function(RecentPostsRefreshed) then) =
      _$RecentPostsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentPostsRefreshedCopyWithImpl<$Res>
    extends _$RecentPostsEventCopyWithImpl<$Res>
    implements $RecentPostsRefreshedCopyWith<$Res> {
  _$RecentPostsRefreshedCopyWithImpl(
      RecentPostsRefreshed _value, $Res Function(RecentPostsRefreshed) _then)
      : super(_value, (v) => _then(v as RecentPostsRefreshed));

  @override
  RecentPostsRefreshed get _value => super._value as RecentPostsRefreshed;
}

/// @nodoc

class _$RecentPostsRefreshed implements RecentPostsRefreshed {
  const _$RecentPostsRefreshed();

  @override
  String toString() {
    return 'RecentPostsEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentPostsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function() refreshed,
  }) {
    return refreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
  }) {
    return refreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function()? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsLoaded value) loaded,
    required TResult Function(RecentPostsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsLoaded value)? loaded,
    TResult Function(RecentPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class RecentPostsRefreshed implements RecentPostsEvent {
  const factory RecentPostsRefreshed() = _$RecentPostsRefreshed;
}

/// @nodoc
class _$RecentPostsStateTearOff {
  const _$RecentPostsStateTearOff();

  RecentPostsInProgress inProgress() {
    return const RecentPostsInProgress();
  }

  RecentPostsLoadSuccess loadSuccess(UnmodifiableListView<Post> recentPosts) {
    return RecentPostsLoadSuccess(
      recentPosts,
    );
  }

  RecentPostsLoadFailure loadFailure(
      ServerException error, UnmodifiableListView<Post> cachedRecentPosts) {
    return RecentPostsLoadFailure(
      error,
      cachedRecentPosts,
    );
  }
}

/// @nodoc
const $RecentPostsState = _$RecentPostsStateTearOff();

/// @nodoc
mixin _$RecentPostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ServerException error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsInProgress value) inProgress,
    required TResult Function(RecentPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentPostsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentPostsStateCopyWith<$Res> {
  factory $RecentPostsStateCopyWith(
          RecentPostsState value, $Res Function(RecentPostsState) then) =
      _$RecentPostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentPostsStateCopyWithImpl<$Res>
    implements $RecentPostsStateCopyWith<$Res> {
  _$RecentPostsStateCopyWithImpl(this._value, this._then);

  final RecentPostsState _value;
  // ignore: unused_field
  final $Res Function(RecentPostsState) _then;
}

/// @nodoc
abstract class $RecentPostsInProgressCopyWith<$Res> {
  factory $RecentPostsInProgressCopyWith(RecentPostsInProgress value,
          $Res Function(RecentPostsInProgress) then) =
      _$RecentPostsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentPostsInProgressCopyWithImpl<$Res>
    extends _$RecentPostsStateCopyWithImpl<$Res>
    implements $RecentPostsInProgressCopyWith<$Res> {
  _$RecentPostsInProgressCopyWithImpl(
      RecentPostsInProgress _value, $Res Function(RecentPostsInProgress) _then)
      : super(_value, (v) => _then(v as RecentPostsInProgress));

  @override
  RecentPostsInProgress get _value => super._value as RecentPostsInProgress;
}

/// @nodoc

class _$RecentPostsInProgress implements RecentPostsInProgress {
  const _$RecentPostsInProgress();

  @override
  String toString() {
    return 'RecentPostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentPostsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ServerException error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
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
    required TResult Function(RecentPostsInProgress value) inProgress,
    required TResult Function(RecentPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentPostsLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class RecentPostsInProgress implements RecentPostsState {
  const factory RecentPostsInProgress() = _$RecentPostsInProgress;
}

/// @nodoc
abstract class $RecentPostsLoadSuccessCopyWith<$Res> {
  factory $RecentPostsLoadSuccessCopyWith(RecentPostsLoadSuccess value,
          $Res Function(RecentPostsLoadSuccess) then) =
      _$RecentPostsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<Post> recentPosts});
}

/// @nodoc
class _$RecentPostsLoadSuccessCopyWithImpl<$Res>
    extends _$RecentPostsStateCopyWithImpl<$Res>
    implements $RecentPostsLoadSuccessCopyWith<$Res> {
  _$RecentPostsLoadSuccessCopyWithImpl(RecentPostsLoadSuccess _value,
      $Res Function(RecentPostsLoadSuccess) _then)
      : super(_value, (v) => _then(v as RecentPostsLoadSuccess));

  @override
  RecentPostsLoadSuccess get _value => super._value as RecentPostsLoadSuccess;

  @override
  $Res call({
    Object? recentPosts = freezed,
  }) {
    return _then(RecentPostsLoadSuccess(
      recentPosts == freezed
          ? _value.recentPosts
          : recentPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Post>,
    ));
  }
}

/// @nodoc

class _$RecentPostsLoadSuccess implements RecentPostsLoadSuccess {
  const _$RecentPostsLoadSuccess(this.recentPosts);

  @override
  final UnmodifiableListView<Post> recentPosts;

  @override
  String toString() {
    return 'RecentPostsState.loadSuccess(recentPosts: $recentPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentPostsLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.recentPosts, recentPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recentPosts));

  @JsonKey(ignore: true)
  @override
  $RecentPostsLoadSuccessCopyWith<RecentPostsLoadSuccess> get copyWith =>
      _$RecentPostsLoadSuccessCopyWithImpl<RecentPostsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ServerException error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return loadSuccess(recentPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(recentPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recentPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsInProgress value) inProgress,
    required TResult Function(RecentPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentPostsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class RecentPostsLoadSuccess implements RecentPostsState {
  const factory RecentPostsLoadSuccess(UnmodifiableListView<Post> recentPosts) =
      _$RecentPostsLoadSuccess;

  UnmodifiableListView<Post> get recentPosts;
  @JsonKey(ignore: true)
  $RecentPostsLoadSuccessCopyWith<RecentPostsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentPostsLoadFailureCopyWith<$Res> {
  factory $RecentPostsLoadFailureCopyWith(RecentPostsLoadFailure value,
          $Res Function(RecentPostsLoadFailure) then) =
      _$RecentPostsLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ServerException error, UnmodifiableListView<Post> cachedRecentPosts});
}

/// @nodoc
class _$RecentPostsLoadFailureCopyWithImpl<$Res>
    extends _$RecentPostsStateCopyWithImpl<$Res>
    implements $RecentPostsLoadFailureCopyWith<$Res> {
  _$RecentPostsLoadFailureCopyWithImpl(RecentPostsLoadFailure _value,
      $Res Function(RecentPostsLoadFailure) _then)
      : super(_value, (v) => _then(v as RecentPostsLoadFailure));

  @override
  RecentPostsLoadFailure get _value => super._value as RecentPostsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedRecentPosts = freezed,
  }) {
    return _then(RecentPostsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
      cachedRecentPosts == freezed
          ? _value.cachedRecentPosts
          : cachedRecentPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Post>,
    ));
  }
}

/// @nodoc

class _$RecentPostsLoadFailure implements RecentPostsLoadFailure {
  const _$RecentPostsLoadFailure(this.error, this.cachedRecentPosts);

  @override
  final ServerException error;
  @override
  final UnmodifiableListView<Post> cachedRecentPosts;

  @override
  String toString() {
    return 'RecentPostsState.loadFailure(error: $error, cachedRecentPosts: $cachedRecentPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentPostsLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.cachedRecentPosts, cachedRecentPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cachedRecentPosts));

  @JsonKey(ignore: true)
  @override
  $RecentPostsLoadFailureCopyWith<RecentPostsLoadFailure> get copyWith =>
      _$RecentPostsLoadFailureCopyWithImpl<RecentPostsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ServerException error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedRecentPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedRecentPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error, cachedRecentPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentPostsInProgress value) inProgress,
    required TResult Function(RecentPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentPostsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentPostsInProgress value)? inProgress,
    TResult Function(RecentPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class RecentPostsLoadFailure implements RecentPostsState {
  const factory RecentPostsLoadFailure(
          ServerException error, UnmodifiableListView<Post> cachedRecentPosts) =
      _$RecentPostsLoadFailure;

  ServerException get error;
  UnmodifiableListView<Post> get cachedRecentPosts;
  @JsonKey(ignore: true)
  $RecentPostsLoadFailureCopyWith<RecentPostsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
