// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritePostsEventTearOff {
  const _$FavoritePostsEventTearOff();

  FavoritePostsLoaded loaded() {
    return const FavoritePostsLoaded();
  }

  FavoritePostsRefreshed refreshed() {
    return const FavoritePostsRefreshed();
  }
}

/// @nodoc
const $FavoritePostsEvent = _$FavoritePostsEventTearOff();

/// @nodoc
mixin _$FavoritePostsEvent {
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
    required TResult Function(FavoritePostsLoaded value) loaded,
    required TResult Function(FavoritePostsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostsEventCopyWith<$Res> {
  factory $FavoritePostsEventCopyWith(
          FavoritePostsEvent value, $Res Function(FavoritePostsEvent) then) =
      _$FavoritePostsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostsEventCopyWithImpl<$Res>
    implements $FavoritePostsEventCopyWith<$Res> {
  _$FavoritePostsEventCopyWithImpl(this._value, this._then);

  final FavoritePostsEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritePostsEvent) _then;
}

/// @nodoc
abstract class $FavoritePostsLoadedCopyWith<$Res> {
  factory $FavoritePostsLoadedCopyWith(
          FavoritePostsLoaded value, $Res Function(FavoritePostsLoaded) then) =
      _$FavoritePostsLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostsLoadedCopyWithImpl<$Res>
    extends _$FavoritePostsEventCopyWithImpl<$Res>
    implements $FavoritePostsLoadedCopyWith<$Res> {
  _$FavoritePostsLoadedCopyWithImpl(
      FavoritePostsLoaded _value, $Res Function(FavoritePostsLoaded) _then)
      : super(_value, (v) => _then(v as FavoritePostsLoaded));

  @override
  FavoritePostsLoaded get _value => super._value as FavoritePostsLoaded;
}

/// @nodoc

class _$FavoritePostsLoaded implements FavoritePostsLoaded {
  const _$FavoritePostsLoaded();

  @override
  String toString() {
    return 'FavoritePostsEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritePostsLoaded);
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
    required TResult Function(FavoritePostsLoaded value) loaded,
    required TResult Function(FavoritePostsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritePostsLoaded implements FavoritePostsEvent {
  const factory FavoritePostsLoaded() = _$FavoritePostsLoaded;
}

/// @nodoc
abstract class $FavoritePostsRefreshedCopyWith<$Res> {
  factory $FavoritePostsRefreshedCopyWith(FavoritePostsRefreshed value,
          $Res Function(FavoritePostsRefreshed) then) =
      _$FavoritePostsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostsRefreshedCopyWithImpl<$Res>
    extends _$FavoritePostsEventCopyWithImpl<$Res>
    implements $FavoritePostsRefreshedCopyWith<$Res> {
  _$FavoritePostsRefreshedCopyWithImpl(FavoritePostsRefreshed _value,
      $Res Function(FavoritePostsRefreshed) _then)
      : super(_value, (v) => _then(v as FavoritePostsRefreshed));

  @override
  FavoritePostsRefreshed get _value => super._value as FavoritePostsRefreshed;
}

/// @nodoc

class _$FavoritePostsRefreshed implements FavoritePostsRefreshed {
  const _$FavoritePostsRefreshed();

  @override
  String toString() {
    return 'FavoritePostsEvent.refreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritePostsRefreshed);
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
    required TResult Function(FavoritePostsLoaded value) loaded,
    required TResult Function(FavoritePostsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsLoaded value)? loaded,
    TResult Function(FavoritePostsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class FavoritePostsRefreshed implements FavoritePostsEvent {
  const factory FavoritePostsRefreshed() = _$FavoritePostsRefreshed;
}

/// @nodoc
class _$FavoritePostsStateTearOff {
  const _$FavoritePostsStateTearOff();

  FavoritePostsInProgress inProgress() {
    return const FavoritePostsInProgress();
  }

  FavoritePostsLoadSuccess loadSuccess(UnmodifiableListView<Post> recentPosts) {
    return FavoritePostsLoadSuccess(
      recentPosts,
    );
  }

  FavoritePostsLoadFailure loadFailure(
      ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts) {
    return FavoritePostsLoadFailure(
      error,
      cachedRecentPosts,
    );
  }
}

/// @nodoc
const $FavoritePostsState = _$FavoritePostsStateTearOff();

/// @nodoc
mixin _$FavoritePostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostsInProgress value) inProgress,
    required TResult Function(FavoritePostsLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostsLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostsStateCopyWith<$Res> {
  factory $FavoritePostsStateCopyWith(
          FavoritePostsState value, $Res Function(FavoritePostsState) then) =
      _$FavoritePostsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostsStateCopyWithImpl<$Res>
    implements $FavoritePostsStateCopyWith<$Res> {
  _$FavoritePostsStateCopyWithImpl(this._value, this._then);

  final FavoritePostsState _value;
  // ignore: unused_field
  final $Res Function(FavoritePostsState) _then;
}

/// @nodoc
abstract class $FavoritePostsInProgressCopyWith<$Res> {
  factory $FavoritePostsInProgressCopyWith(FavoritePostsInProgress value,
          $Res Function(FavoritePostsInProgress) then) =
      _$FavoritePostsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostsInProgressCopyWithImpl<$Res>
    extends _$FavoritePostsStateCopyWithImpl<$Res>
    implements $FavoritePostsInProgressCopyWith<$Res> {
  _$FavoritePostsInProgressCopyWithImpl(FavoritePostsInProgress _value,
      $Res Function(FavoritePostsInProgress) _then)
      : super(_value, (v) => _then(v as FavoritePostsInProgress));

  @override
  FavoritePostsInProgress get _value => super._value as FavoritePostsInProgress;
}

/// @nodoc

class _$FavoritePostsInProgress implements FavoritePostsInProgress {
  const _$FavoritePostsInProgress();

  @override
  String toString() {
    return 'FavoritePostsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritePostsInProgress);
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
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
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
    required TResult Function(FavoritePostsInProgress value) inProgress,
    required TResult Function(FavoritePostsLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostsLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class FavoritePostsInProgress implements FavoritePostsState {
  const factory FavoritePostsInProgress() = _$FavoritePostsInProgress;
}

/// @nodoc
abstract class $FavoritePostsLoadSuccessCopyWith<$Res> {
  factory $FavoritePostsLoadSuccessCopyWith(FavoritePostsLoadSuccess value,
          $Res Function(FavoritePostsLoadSuccess) then) =
      _$FavoritePostsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<Post> recentPosts});
}

/// @nodoc
class _$FavoritePostsLoadSuccessCopyWithImpl<$Res>
    extends _$FavoritePostsStateCopyWithImpl<$Res>
    implements $FavoritePostsLoadSuccessCopyWith<$Res> {
  _$FavoritePostsLoadSuccessCopyWithImpl(FavoritePostsLoadSuccess _value,
      $Res Function(FavoritePostsLoadSuccess) _then)
      : super(_value, (v) => _then(v as FavoritePostsLoadSuccess));

  @override
  FavoritePostsLoadSuccess get _value =>
      super._value as FavoritePostsLoadSuccess;

  @override
  $Res call({
    Object? recentPosts = freezed,
  }) {
    return _then(FavoritePostsLoadSuccess(
      recentPosts == freezed
          ? _value.recentPosts
          : recentPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Post>,
    ));
  }
}

/// @nodoc

class _$FavoritePostsLoadSuccess implements FavoritePostsLoadSuccess {
  const _$FavoritePostsLoadSuccess(this.recentPosts);

  @override
  final UnmodifiableListView<Post> recentPosts;

  @override
  String toString() {
    return 'FavoritePostsState.loadSuccess(recentPosts: $recentPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostsLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.recentPosts, recentPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(recentPosts));

  @JsonKey(ignore: true)
  @override
  $FavoritePostsLoadSuccessCopyWith<FavoritePostsLoadSuccess> get copyWith =>
      _$FavoritePostsLoadSuccessCopyWithImpl<FavoritePostsLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return loadSuccess(recentPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(recentPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
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
    required TResult Function(FavoritePostsInProgress value) inProgress,
    required TResult Function(FavoritePostsLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostsLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoritePostsLoadSuccess implements FavoritePostsState {
  const factory FavoritePostsLoadSuccess(
      UnmodifiableListView<Post> recentPosts) = _$FavoritePostsLoadSuccess;

  UnmodifiableListView<Post> get recentPosts;
  @JsonKey(ignore: true)
  $FavoritePostsLoadSuccessCopyWith<FavoritePostsLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostsLoadFailureCopyWith<$Res> {
  factory $FavoritePostsLoadFailureCopyWith(FavoritePostsLoadFailure value,
          $Res Function(FavoritePostsLoadFailure) then) =
      _$FavoritePostsLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts});
}

/// @nodoc
class _$FavoritePostsLoadFailureCopyWithImpl<$Res>
    extends _$FavoritePostsStateCopyWithImpl<$Res>
    implements $FavoritePostsLoadFailureCopyWith<$Res> {
  _$FavoritePostsLoadFailureCopyWithImpl(FavoritePostsLoadFailure _value,
      $Res Function(FavoritePostsLoadFailure) _then)
      : super(_value, (v) => _then(v as FavoritePostsLoadFailure));

  @override
  FavoritePostsLoadFailure get _value =>
      super._value as FavoritePostsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedRecentPosts = freezed,
  }) {
    return _then(FavoritePostsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
      cachedRecentPosts == freezed
          ? _value.cachedRecentPosts
          : cachedRecentPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<Post>,
    ));
  }
}

/// @nodoc

class _$FavoritePostsLoadFailure implements FavoritePostsLoadFailure {
  const _$FavoritePostsLoadFailure(this.error, this.cachedRecentPosts);

  @override
  final ExceptionBase error;
  @override
  final UnmodifiableListView<Post> cachedRecentPosts;

  @override
  String toString() {
    return 'FavoritePostsState.loadFailure(error: $error, cachedRecentPosts: $cachedRecentPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostsLoadFailure &&
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
  $FavoritePostsLoadFailureCopyWith<FavoritePostsLoadFailure> get copyWith =>
      _$FavoritePostsLoadFailureCopyWithImpl<FavoritePostsLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<Post> recentPosts)
        loadSuccess,
    required TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedRecentPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedRecentPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<Post> recentPosts)? loadSuccess,
    TResult Function(
            ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts)?
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
    required TResult Function(FavoritePostsInProgress value) inProgress,
    required TResult Function(FavoritePostsLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostsLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostsInProgress value)? inProgress,
    TResult Function(FavoritePostsLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FavoritePostsLoadFailure implements FavoritePostsState {
  const factory FavoritePostsLoadFailure(
          ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts) =
      _$FavoritePostsLoadFailure;

  ExceptionBase get error;
  UnmodifiableListView<Post> get cachedRecentPosts;
  @JsonKey(ignore: true)
  $FavoritePostsLoadFailureCopyWith<FavoritePostsLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
