// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recent_service_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecentServicePostsEventTearOff {
  const _$RecentServicePostsEventTearOff();

  RecentServicePostsLoaded loaded() {
    return const RecentServicePostsLoaded();
  }

  RecentServicePostsRefreshed refreshed() {
    return const RecentServicePostsRefreshed();
  }
}

/// @nodoc
const $RecentServicePostsEvent = _$RecentServicePostsEventTearOff();

/// @nodoc
mixin _$RecentServicePostsEvent {
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
    required TResult Function(RecentServicePostsLoaded value) loaded,
    required TResult Function(RecentServicePostsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentServicePostsEventCopyWith<$Res> {
  factory $RecentServicePostsEventCopyWith(RecentServicePostsEvent value,
          $Res Function(RecentServicePostsEvent) then) =
      _$RecentServicePostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentServicePostsEventCopyWithImpl<$Res>
    implements $RecentServicePostsEventCopyWith<$Res> {
  _$RecentServicePostsEventCopyWithImpl(this._value, this._then);

  final RecentServicePostsEvent _value;
  // ignore: unused_field
  final $Res Function(RecentServicePostsEvent) _then;
}

/// @nodoc
abstract class $RecentServicePostsLoadedCopyWith<$Res> {
  factory $RecentServicePostsLoadedCopyWith(RecentServicePostsLoaded value,
          $Res Function(RecentServicePostsLoaded) then) =
      _$RecentServicePostsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentServicePostsLoadedCopyWithImpl<$Res>
    extends _$RecentServicePostsEventCopyWithImpl<$Res>
    implements $RecentServicePostsLoadedCopyWith<$Res> {
  _$RecentServicePostsLoadedCopyWithImpl(RecentServicePostsLoaded _value,
      $Res Function(RecentServicePostsLoaded) _then)
      : super(_value, (v) => _then(v as RecentServicePostsLoaded));

  @override
  RecentServicePostsLoaded get _value =>
      super._value as RecentServicePostsLoaded;
}

/// @nodoc

class _$RecentServicePostsLoaded implements RecentServicePostsLoaded {
  const _$RecentServicePostsLoaded();

  @override
  String toString() {
    return 'RecentServicePostsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecentServicePostsLoaded);
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
    required TResult Function(RecentServicePostsLoaded value) loaded,
    required TResult Function(RecentServicePostsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecentServicePostsLoaded implements RecentServicePostsEvent {
  const factory RecentServicePostsLoaded() = _$RecentServicePostsLoaded;
}

/// @nodoc
abstract class $RecentServicePostsRefreshedCopyWith<$Res> {
  factory $RecentServicePostsRefreshedCopyWith(
          RecentServicePostsRefreshed value,
          $Res Function(RecentServicePostsRefreshed) then) =
      _$RecentServicePostsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentServicePostsRefreshedCopyWithImpl<$Res>
    extends _$RecentServicePostsEventCopyWithImpl<$Res>
    implements $RecentServicePostsRefreshedCopyWith<$Res> {
  _$RecentServicePostsRefreshedCopyWithImpl(RecentServicePostsRefreshed _value,
      $Res Function(RecentServicePostsRefreshed) _then)
      : super(_value, (v) => _then(v as RecentServicePostsRefreshed));

  @override
  RecentServicePostsRefreshed get _value =>
      super._value as RecentServicePostsRefreshed;
}

/// @nodoc

class _$RecentServicePostsRefreshed implements RecentServicePostsRefreshed {
  const _$RecentServicePostsRefreshed();

  @override
  String toString() {
    return 'RecentServicePostsEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentServicePostsRefreshed);
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
    required TResult Function(RecentServicePostsLoaded value) loaded,
    required TResult Function(RecentServicePostsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsLoaded value)? loaded,
    TResult Function(RecentServicePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class RecentServicePostsRefreshed implements RecentServicePostsEvent {
  const factory RecentServicePostsRefreshed() = _$RecentServicePostsRefreshed;
}

/// @nodoc
class _$RecentServicePostsStateTearOff {
  const _$RecentServicePostsStateTearOff();

  RecentServicePostsInProgress inProgress() {
    return const RecentServicePostsInProgress();
  }

  RecentServicePostsLoadSuccess loadSuccess(
      UnmodifiableListView<ServicePost> recentServicePosts) {
    return RecentServicePostsLoadSuccess(
      recentServicePosts,
    );
  }

  RecentServicePostsLoadFailure loadFailure(ServerException error,
      UnmodifiableListView<ServicePost> cachedRecentServicePosts) {
    return RecentServicePostsLoadFailure(
      error,
      cachedRecentServicePosts,
    );
  }
}

/// @nodoc
const $RecentServicePostsState = _$RecentServicePostsStateTearOff();

/// @nodoc
mixin _$RecentServicePostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> recentServicePosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentServicePostsInProgress value) inProgress,
    required TResult Function(RecentServicePostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentServicePostsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentServicePostsStateCopyWith<$Res> {
  factory $RecentServicePostsStateCopyWith(RecentServicePostsState value,
          $Res Function(RecentServicePostsState) then) =
      _$RecentServicePostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentServicePostsStateCopyWithImpl<$Res>
    implements $RecentServicePostsStateCopyWith<$Res> {
  _$RecentServicePostsStateCopyWithImpl(this._value, this._then);

  final RecentServicePostsState _value;
  // ignore: unused_field
  final $Res Function(RecentServicePostsState) _then;
}

/// @nodoc
abstract class $RecentServicePostsInProgressCopyWith<$Res> {
  factory $RecentServicePostsInProgressCopyWith(
          RecentServicePostsInProgress value,
          $Res Function(RecentServicePostsInProgress) then) =
      _$RecentServicePostsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecentServicePostsInProgressCopyWithImpl<$Res>
    extends _$RecentServicePostsStateCopyWithImpl<$Res>
    implements $RecentServicePostsInProgressCopyWith<$Res> {
  _$RecentServicePostsInProgressCopyWithImpl(
      RecentServicePostsInProgress _value,
      $Res Function(RecentServicePostsInProgress) _then)
      : super(_value, (v) => _then(v as RecentServicePostsInProgress));

  @override
  RecentServicePostsInProgress get _value =>
      super._value as RecentServicePostsInProgress;
}

/// @nodoc

class _$RecentServicePostsInProgress implements RecentServicePostsInProgress {
  const _$RecentServicePostsInProgress();

  @override
  String toString() {
    return 'RecentServicePostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentServicePostsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> recentServicePosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
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
    required TResult Function(RecentServicePostsInProgress value) inProgress,
    required TResult Function(RecentServicePostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentServicePostsLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class RecentServicePostsInProgress implements RecentServicePostsState {
  const factory RecentServicePostsInProgress() = _$RecentServicePostsInProgress;
}

/// @nodoc
abstract class $RecentServicePostsLoadSuccessCopyWith<$Res> {
  factory $RecentServicePostsLoadSuccessCopyWith(
          RecentServicePostsLoadSuccess value,
          $Res Function(RecentServicePostsLoadSuccess) then) =
      _$RecentServicePostsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<ServicePost> recentServicePosts});
}

/// @nodoc
class _$RecentServicePostsLoadSuccessCopyWithImpl<$Res>
    extends _$RecentServicePostsStateCopyWithImpl<$Res>
    implements $RecentServicePostsLoadSuccessCopyWith<$Res> {
  _$RecentServicePostsLoadSuccessCopyWithImpl(
      RecentServicePostsLoadSuccess _value,
      $Res Function(RecentServicePostsLoadSuccess) _then)
      : super(_value, (v) => _then(v as RecentServicePostsLoadSuccess));

  @override
  RecentServicePostsLoadSuccess get _value =>
      super._value as RecentServicePostsLoadSuccess;

  @override
  $Res call({
    Object? recentServicePosts = freezed,
  }) {
    return _then(RecentServicePostsLoadSuccess(
      recentServicePosts == freezed
          ? _value.recentServicePosts
          : recentServicePosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$RecentServicePostsLoadSuccess implements RecentServicePostsLoadSuccess {
  const _$RecentServicePostsLoadSuccess(this.recentServicePosts);

  @override
  final UnmodifiableListView<ServicePost> recentServicePosts;

  @override
  String toString() {
    return 'RecentServicePostsState.loadSuccess(recentServicePosts: $recentServicePosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentServicePostsLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.recentServicePosts, recentServicePosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recentServicePosts));

  @JsonKey(ignore: true)
  @override
  $RecentServicePostsLoadSuccessCopyWith<RecentServicePostsLoadSuccess>
      get copyWith => _$RecentServicePostsLoadSuccessCopyWithImpl<
          RecentServicePostsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> recentServicePosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)
        loadFailure,
  }) {
    return loadSuccess(recentServicePosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(recentServicePosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(recentServicePosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentServicePostsInProgress value) inProgress,
    required TResult Function(RecentServicePostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentServicePostsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class RecentServicePostsLoadSuccess
    implements RecentServicePostsState {
  const factory RecentServicePostsLoadSuccess(
          UnmodifiableListView<ServicePost> recentServicePosts) =
      _$RecentServicePostsLoadSuccess;

  UnmodifiableListView<ServicePost> get recentServicePosts;
  @JsonKey(ignore: true)
  $RecentServicePostsLoadSuccessCopyWith<RecentServicePostsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentServicePostsLoadFailureCopyWith<$Res> {
  factory $RecentServicePostsLoadFailureCopyWith(
          RecentServicePostsLoadFailure value,
          $Res Function(RecentServicePostsLoadFailure) then) =
      _$RecentServicePostsLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ServerException error,
      UnmodifiableListView<ServicePost> cachedRecentServicePosts});
}

/// @nodoc
class _$RecentServicePostsLoadFailureCopyWithImpl<$Res>
    extends _$RecentServicePostsStateCopyWithImpl<$Res>
    implements $RecentServicePostsLoadFailureCopyWith<$Res> {
  _$RecentServicePostsLoadFailureCopyWithImpl(
      RecentServicePostsLoadFailure _value,
      $Res Function(RecentServicePostsLoadFailure) _then)
      : super(_value, (v) => _then(v as RecentServicePostsLoadFailure));

  @override
  RecentServicePostsLoadFailure get _value =>
      super._value as RecentServicePostsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedRecentServicePosts = freezed,
  }) {
    return _then(RecentServicePostsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
      cachedRecentServicePosts == freezed
          ? _value.cachedRecentServicePosts
          : cachedRecentServicePosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$RecentServicePostsLoadFailure implements RecentServicePostsLoadFailure {
  const _$RecentServicePostsLoadFailure(
      this.error, this.cachedRecentServicePosts);

  @override
  final ServerException error;
  @override
  final UnmodifiableListView<ServicePost> cachedRecentServicePosts;

  @override
  String toString() {
    return 'RecentServicePostsState.loadFailure(error: $error, cachedRecentServicePosts: $cachedRecentServicePosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecentServicePostsLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(
                other.cachedRecentServicePosts, cachedRecentServicePosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cachedRecentServicePosts));

  @JsonKey(ignore: true)
  @override
  $RecentServicePostsLoadFailureCopyWith<RecentServicePostsLoadFailure>
      get copyWith => _$RecentServicePostsLoadFailureCopyWithImpl<
          RecentServicePostsLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> recentServicePosts)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedRecentServicePosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedRecentServicePosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> recentServicePosts)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedRecentServicePosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error, cachedRecentServicePosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecentServicePostsInProgress value) inProgress,
    required TResult Function(RecentServicePostsLoadSuccess value) loadSuccess,
    required TResult Function(RecentServicePostsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecentServicePostsInProgress value)? inProgress,
    TResult Function(RecentServicePostsLoadSuccess value)? loadSuccess,
    TResult Function(RecentServicePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class RecentServicePostsLoadFailure
    implements RecentServicePostsState {
  const factory RecentServicePostsLoadFailure(ServerException error,
          UnmodifiableListView<ServicePost> cachedRecentServicePosts) =
      _$RecentServicePostsLoadFailure;

  ServerException get error;
  UnmodifiableListView<ServicePost> get cachedRecentServicePosts;
  @JsonKey(ignore: true)
  $RecentServicePostsLoadFailureCopyWith<RecentServicePostsLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
