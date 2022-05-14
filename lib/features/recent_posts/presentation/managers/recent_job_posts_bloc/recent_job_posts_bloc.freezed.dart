// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_job_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecentJobPostsEventTearOff {
  const _$RecentJobPostsEventTearOff();

  RecentJobPostsLoaded loaded() {
    return const RecentJobPostsLoaded();
  }

  RecentJobPostsRefreshed refreshed() {
    return const RecentJobPostsRefreshed();
  }
}

/// @nodoc
const $RecentJobPostsEvent = _$RecentJobPostsEventTearOff();

/// @nodoc
mixin _$RecentJobPostsEvent {
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
    required TResult Function(RecentJobPostsLoaded value) loaded,
    required TResult Function(RecentJobPostsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentJobPostsEventCopyWith<$Res> {
  factory $RecentJobPostsEventCopyWith(
          RecentJobPostsEvent value, $Res Function(RecentJobPostsEvent) then) =
      _$RecentJobPostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentJobPostsEventCopyWithImpl<$Res>
    implements $RecentJobPostsEventCopyWith<$Res> {
  _$RecentJobPostsEventCopyWithImpl(this._value, this._then);

  final RecentJobPostsEvent _value;
  // ignore: unused_field
  final $Res Function(RecentJobPostsEvent) _then;
}

/// @nodoc
abstract class $RecentJobPostsLoadedCopyWith<$Res> {
  factory $RecentJobPostsLoadedCopyWith(RecentJobPostsLoaded value,
          $Res Function(RecentJobPostsLoaded) then) =
      _$RecentJobPostsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentJobPostsLoadedCopyWithImpl<$Res>
    extends _$RecentJobPostsEventCopyWithImpl<$Res>
    implements $RecentJobPostsLoadedCopyWith<$Res> {
  _$RecentJobPostsLoadedCopyWithImpl(
      RecentJobPostsLoaded _value, $Res Function(RecentJobPostsLoaded) _then)
      : super(_value, (v) => _then(v as RecentJobPostsLoaded));

  @override
  RecentJobPostsLoaded get _value => super._value as RecentJobPostsLoaded;
}

/// @nodoc

class _$RecentJobPostsLoaded implements RecentJobPostsLoaded {
  const _$RecentJobPostsLoaded();

  @override
  String toString() {
    return 'RecentJobPostsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentJobPostsLoaded);
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
    required TResult Function(RecentJobPostsLoaded value) loaded,
    required TResult Function(RecentJobPostsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecentJobPostsLoaded implements RecentJobPostsEvent {
  const factory RecentJobPostsLoaded() = _$RecentJobPostsLoaded;
}

/// @nodoc
abstract class $RecentJobPostsRefreshedCopyWith<$Res> {
  factory $RecentJobPostsRefreshedCopyWith(RecentJobPostsRefreshed value,
          $Res Function(RecentJobPostsRefreshed) then) =
      _$RecentJobPostsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentJobPostsRefreshedCopyWithImpl<$Res>
    extends _$RecentJobPostsEventCopyWithImpl<$Res>
    implements $RecentJobPostsRefreshedCopyWith<$Res> {
  _$RecentJobPostsRefreshedCopyWithImpl(RecentJobPostsRefreshed _value,
      $Res Function(RecentJobPostsRefreshed) _then)
      : super(_value, (v) => _then(v as RecentJobPostsRefreshed));

  @override
  RecentJobPostsRefreshed get _value => super._value as RecentJobPostsRefreshed;
}

/// @nodoc

class _$RecentJobPostsRefreshed implements RecentJobPostsRefreshed {
  const _$RecentJobPostsRefreshed();

  @override
  String toString() {
    return 'RecentJobPostsEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentJobPostsRefreshed);
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
    required TResult Function(RecentJobPostsLoaded value) loaded,
    required TResult Function(RecentJobPostsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsLoaded value)? loaded,
    TResult Function(RecentJobPostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class RecentJobPostsRefreshed implements RecentJobPostsEvent {
  const factory RecentJobPostsRefreshed() = _$RecentJobPostsRefreshed;
}

/// @nodoc
class _$RecentJobPostsStateTearOff {
  const _$RecentJobPostsStateTearOff();

  RecentJobPostsInProgress inProgress() {
    return const RecentJobPostsInProgress();
  }

  RecentJobPostsLoadSuccess loadSuccess(
      UnmodifiableListView<JobPost> recentJobPosts) {
    return RecentJobPostsLoadSuccess(
      recentJobPosts,
    );
  }

  RecentJobPostsLoadFailure loadFailure(ServerException error,
      UnmodifiableListView<JobPost> cachedRecentJobPosts) {
    return RecentJobPostsLoadFailure(
      error,
      cachedRecentJobPosts,
    );
  }
}

/// @nodoc
const $RecentJobPostsState = _$RecentJobPostsStateTearOff();

/// @nodoc
mixin _$RecentJobPostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<JobPost> recentJobPosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentJobPostsInProgress value) inProgress,
    required TResult Function(RecentJobPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentJobPostsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentJobPostsStateCopyWith<$Res> {
  factory $RecentJobPostsStateCopyWith(
          RecentJobPostsState value, $Res Function(RecentJobPostsState) then) =
      _$RecentJobPostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentJobPostsStateCopyWithImpl<$Res>
    implements $RecentJobPostsStateCopyWith<$Res> {
  _$RecentJobPostsStateCopyWithImpl(this._value, this._then);

  final RecentJobPostsState _value;
  // ignore: unused_field
  final $Res Function(RecentJobPostsState) _then;
}

/// @nodoc
abstract class $RecentJobPostsInProgressCopyWith<$Res> {
  factory $RecentJobPostsInProgressCopyWith(RecentJobPostsInProgress value,
          $Res Function(RecentJobPostsInProgress) then) =
      _$RecentJobPostsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentJobPostsInProgressCopyWithImpl<$Res>
    extends _$RecentJobPostsStateCopyWithImpl<$Res>
    implements $RecentJobPostsInProgressCopyWith<$Res> {
  _$RecentJobPostsInProgressCopyWithImpl(RecentJobPostsInProgress _value,
      $Res Function(RecentJobPostsInProgress) _then)
      : super(_value, (v) => _then(v as RecentJobPostsInProgress));

  @override
  RecentJobPostsInProgress get _value =>
      super._value as RecentJobPostsInProgress;
}

/// @nodoc

class _$RecentJobPostsInProgress implements RecentJobPostsInProgress {
  const _$RecentJobPostsInProgress();

  @override
  String toString() {
    return 'RecentJobPostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentJobPostsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<JobPost> recentJobPosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
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
    required TResult Function(RecentJobPostsInProgress value) inProgress,
    required TResult Function(RecentJobPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentJobPostsLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class RecentJobPostsInProgress implements RecentJobPostsState {
  const factory RecentJobPostsInProgress() = _$RecentJobPostsInProgress;
}

/// @nodoc
abstract class $RecentJobPostsLoadSuccessCopyWith<$Res> {
  factory $RecentJobPostsLoadSuccessCopyWith(RecentJobPostsLoadSuccess value,
          $Res Function(RecentJobPostsLoadSuccess) then) =
      _$RecentJobPostsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<JobPost> recentJobPosts});
}

/// @nodoc
class _$RecentJobPostsLoadSuccessCopyWithImpl<$Res>
    extends _$RecentJobPostsStateCopyWithImpl<$Res>
    implements $RecentJobPostsLoadSuccessCopyWith<$Res> {
  _$RecentJobPostsLoadSuccessCopyWithImpl(RecentJobPostsLoadSuccess _value,
      $Res Function(RecentJobPostsLoadSuccess) _then)
      : super(_value, (v) => _then(v as RecentJobPostsLoadSuccess));

  @override
  RecentJobPostsLoadSuccess get _value =>
      super._value as RecentJobPostsLoadSuccess;

  @override
  $Res call({
    Object? recentJobPosts = freezed,
  }) {
    return _then(RecentJobPostsLoadSuccess(
      recentJobPosts == freezed
          ? _value.recentJobPosts
          : recentJobPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<JobPost>,
    ));
  }
}

/// @nodoc

class _$RecentJobPostsLoadSuccess implements RecentJobPostsLoadSuccess {
  const _$RecentJobPostsLoadSuccess(this.recentJobPosts);

  @override
  final UnmodifiableListView<JobPost> recentJobPosts;

  @override
  String toString() {
    return 'RecentJobPostsState.loadSuccess(recentJobPosts: $recentJobPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentJobPostsLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.recentJobPosts, recentJobPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recentJobPosts));

  @JsonKey(ignore: true)
  @override
  $RecentJobPostsLoadSuccessCopyWith<RecentJobPostsLoadSuccess> get copyWith =>
      _$RecentJobPostsLoadSuccessCopyWithImpl<RecentJobPostsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<JobPost> recentJobPosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)
        loadFailure,
  }) {
    return loadSuccess(recentJobPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(recentJobPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recentJobPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentJobPostsInProgress value) inProgress,
    required TResult Function(RecentJobPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentJobPostsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class RecentJobPostsLoadSuccess implements RecentJobPostsState {
  const factory RecentJobPostsLoadSuccess(
          UnmodifiableListView<JobPost> recentJobPosts) =
      _$RecentJobPostsLoadSuccess;

  UnmodifiableListView<JobPost> get recentJobPosts;
  @JsonKey(ignore: true)
  $RecentJobPostsLoadSuccessCopyWith<RecentJobPostsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentJobPostsLoadFailureCopyWith<$Res> {
  factory $RecentJobPostsLoadFailureCopyWith(RecentJobPostsLoadFailure value,
          $Res Function(RecentJobPostsLoadFailure) then) =
      _$RecentJobPostsLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ServerException error,
      UnmodifiableListView<JobPost> cachedRecentJobPosts});
}

/// @nodoc
class _$RecentJobPostsLoadFailureCopyWithImpl<$Res>
    extends _$RecentJobPostsStateCopyWithImpl<$Res>
    implements $RecentJobPostsLoadFailureCopyWith<$Res> {
  _$RecentJobPostsLoadFailureCopyWithImpl(RecentJobPostsLoadFailure _value,
      $Res Function(RecentJobPostsLoadFailure) _then)
      : super(_value, (v) => _then(v as RecentJobPostsLoadFailure));

  @override
  RecentJobPostsLoadFailure get _value =>
      super._value as RecentJobPostsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedRecentJobPosts = freezed,
  }) {
    return _then(RecentJobPostsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
      cachedRecentJobPosts == freezed
          ? _value.cachedRecentJobPosts
          : cachedRecentJobPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<JobPost>,
    ));
  }
}

/// @nodoc

class _$RecentJobPostsLoadFailure implements RecentJobPostsLoadFailure {
  const _$RecentJobPostsLoadFailure(this.error, this.cachedRecentJobPosts);

  @override
  final ServerException error;
  @override
  final UnmodifiableListView<JobPost> cachedRecentJobPosts;

  @override
  String toString() {
    return 'RecentJobPostsState.loadFailure(error: $error, cachedRecentJobPosts: $cachedRecentJobPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentJobPostsLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.cachedRecentJobPosts, cachedRecentJobPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cachedRecentJobPosts));

  @JsonKey(ignore: true)
  @override
  $RecentJobPostsLoadFailureCopyWith<RecentJobPostsLoadFailure> get copyWith =>
      _$RecentJobPostsLoadFailureCopyWithImpl<RecentJobPostsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<JobPost> recentJobPosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedRecentJobPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedRecentJobPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobPost> recentJobPosts)? loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<JobPost> cachedRecentJobPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error, cachedRecentJobPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentJobPostsInProgress value) inProgress,
    required TResult Function(RecentJobPostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentJobPostsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentJobPostsInProgress value)? inProgress,
    TResult Function(RecentJobPostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentJobPostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class RecentJobPostsLoadFailure implements RecentJobPostsState {
  const factory RecentJobPostsLoadFailure(ServerException error,
          UnmodifiableListView<JobPost> cachedRecentJobPosts) =
      _$RecentJobPostsLoadFailure;

  ServerException get error;
  UnmodifiableListView<JobPost> get cachedRecentJobPosts;
  @JsonKey(ignore: true)
  $RecentJobPostsLoadFailureCopyWith<RecentJobPostsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
