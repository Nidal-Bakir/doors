// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'posts_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PostsSearchEventTearOff {
  const _$PostsSearchEventTearOff();

  PostsSearchStarted started(SearchFilter searchFilter) {
    return PostsSearchStarted(
      searchFilter,
    );
  }

  PostsSearchMoreSearchResultLoaded moreSearchResultLoaded() {
    return const PostsSearchMoreSearchResultLoaded();
  }
}

/// @nodoc
const $PostsSearchEvent = _$PostsSearchEventTearOff();

/// @nodoc
mixin _$PostsSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchFilter searchFilter) started,
    required TResult Function() moreSearchResultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchStarted value) started,
    required TResult Function(PostsSearchMoreSearchResultLoaded value)
        moreSearchResultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSearchEventCopyWith<$Res> {
  factory $PostsSearchEventCopyWith(
          PostsSearchEvent value, $Res Function(PostsSearchEvent) then) =
      _$PostsSearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsSearchEventCopyWithImpl<$Res>
    implements $PostsSearchEventCopyWith<$Res> {
  _$PostsSearchEventCopyWithImpl(this._value, this._then);

  final PostsSearchEvent _value;
  // ignore: unused_field
  final $Res Function(PostsSearchEvent) _then;
}

/// @nodoc
abstract class $PostsSearchStartedCopyWith<$Res> {
  factory $PostsSearchStartedCopyWith(
          PostsSearchStarted value, $Res Function(PostsSearchStarted) then) =
      _$PostsSearchStartedCopyWithImpl<$Res>;
  $Res call({SearchFilter searchFilter});

  $SearchFilterCopyWith<$Res> get searchFilter;
}

/// @nodoc
class _$PostsSearchStartedCopyWithImpl<$Res>
    extends _$PostsSearchEventCopyWithImpl<$Res>
    implements $PostsSearchStartedCopyWith<$Res> {
  _$PostsSearchStartedCopyWithImpl(
      PostsSearchStarted _value, $Res Function(PostsSearchStarted) _then)
      : super(_value, (v) => _then(v as PostsSearchStarted));

  @override
  PostsSearchStarted get _value => super._value as PostsSearchStarted;

  @override
  $Res call({
    Object? searchFilter = freezed,
  }) {
    return _then(PostsSearchStarted(
      searchFilter == freezed
          ? _value.searchFilter
          : searchFilter // ignore: cast_nullable_to_non_nullable
              as SearchFilter,
    ));
  }

  @override
  $SearchFilterCopyWith<$Res> get searchFilter {
    return $SearchFilterCopyWith<$Res>(_value.searchFilter, (value) {
      return _then(_value.copyWith(searchFilter: value));
    });
  }
}

/// @nodoc

class _$PostsSearchStarted implements PostsSearchStarted {
  const _$PostsSearchStarted(this.searchFilter);

  @override
  final SearchFilter searchFilter;

  @override
  String toString() {
    return 'PostsSearchEvent.started(searchFilter: $searchFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostsSearchStarted &&
            const DeepCollectionEquality()
                .equals(other.searchFilter, searchFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(searchFilter));

  @JsonKey(ignore: true)
  @override
  $PostsSearchStartedCopyWith<PostsSearchStarted> get copyWith =>
      _$PostsSearchStartedCopyWithImpl<PostsSearchStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchFilter searchFilter) started,
    required TResult Function() moreSearchResultLoaded,
  }) {
    return started(searchFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
  }) {
    return started?.call(searchFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(searchFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchStarted value) started,
    required TResult Function(PostsSearchMoreSearchResultLoaded value)
        moreSearchResultLoaded,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class PostsSearchStarted implements PostsSearchEvent {
  const factory PostsSearchStarted(SearchFilter searchFilter) =
      _$PostsSearchStarted;

  SearchFilter get searchFilter;
  @JsonKey(ignore: true)
  $PostsSearchStartedCopyWith<PostsSearchStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSearchMoreSearchResultLoadedCopyWith<$Res> {
  factory $PostsSearchMoreSearchResultLoadedCopyWith(
          PostsSearchMoreSearchResultLoaded value,
          $Res Function(PostsSearchMoreSearchResultLoaded) then) =
      _$PostsSearchMoreSearchResultLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsSearchMoreSearchResultLoadedCopyWithImpl<$Res>
    extends _$PostsSearchEventCopyWithImpl<$Res>
    implements $PostsSearchMoreSearchResultLoadedCopyWith<$Res> {
  _$PostsSearchMoreSearchResultLoadedCopyWithImpl(
      PostsSearchMoreSearchResultLoaded _value,
      $Res Function(PostsSearchMoreSearchResultLoaded) _then)
      : super(_value, (v) => _then(v as PostsSearchMoreSearchResultLoaded));

  @override
  PostsSearchMoreSearchResultLoaded get _value =>
      super._value as PostsSearchMoreSearchResultLoaded;
}

/// @nodoc

class _$PostsSearchMoreSearchResultLoaded
    implements PostsSearchMoreSearchResultLoaded {
  const _$PostsSearchMoreSearchResultLoaded();

  @override
  String toString() {
    return 'PostsSearchEvent.moreSearchResultLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostsSearchMoreSearchResultLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchFilter searchFilter) started,
    required TResult Function() moreSearchResultLoaded,
  }) {
    return moreSearchResultLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
  }) {
    return moreSearchResultLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchFilter searchFilter)? started,
    TResult Function()? moreSearchResultLoaded,
    required TResult orElse(),
  }) {
    if (moreSearchResultLoaded != null) {
      return moreSearchResultLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchStarted value) started,
    required TResult Function(PostsSearchMoreSearchResultLoaded value)
        moreSearchResultLoaded,
  }) {
    return moreSearchResultLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
  }) {
    return moreSearchResultLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStarted value)? started,
    TResult Function(PostsSearchMoreSearchResultLoaded value)?
        moreSearchResultLoaded,
    required TResult orElse(),
  }) {
    if (moreSearchResultLoaded != null) {
      return moreSearchResultLoaded(this);
    }
    return orElse();
  }
}

abstract class PostsSearchMoreSearchResultLoaded implements PostsSearchEvent {
  const factory PostsSearchMoreSearchResultLoaded() =
      _$PostsSearchMoreSearchResultLoaded;
}

/// @nodoc
class _$PostsSearchStateTearOff {
  const _$PostsSearchStateTearOff();

  PostsSearchInitial initial() {
    return const PostsSearchInitial();
  }

  PostsSearchInProgress inProgress() {
    return const PostsSearchInProgress();
  }

  PostsSearchLoadSuccess loadSuccess(
      UnmodifiableListView<ServicePost> postsSearchResult) {
    return PostsSearchLoadSuccess(
      postsSearchResult,
    );
  }

  PostsSearchLoadFailure loadFailure(ServerException error,
      UnmodifiableListView<ServicePost> cachedSearchResult) {
    return PostsSearchLoadFailure(
      error,
      cachedSearchResult,
    );
  }
}

/// @nodoc
const $PostsSearchState = _$PostsSearchStateTearOff();

/// @nodoc
mixin _$PostsSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> postsSearchResult)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchInitial value) initial,
    required TResult Function(PostsSearchInProgress value) inProgress,
    required TResult Function(PostsSearchLoadSuccess value) loadSuccess,
    required TResult Function(PostsSearchLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSearchStateCopyWith<$Res> {
  factory $PostsSearchStateCopyWith(
          PostsSearchState value, $Res Function(PostsSearchState) then) =
      _$PostsSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsSearchStateCopyWithImpl<$Res>
    implements $PostsSearchStateCopyWith<$Res> {
  _$PostsSearchStateCopyWithImpl(this._value, this._then);

  final PostsSearchState _value;
  // ignore: unused_field
  final $Res Function(PostsSearchState) _then;
}

/// @nodoc
abstract class $PostsSearchInitialCopyWith<$Res> {
  factory $PostsSearchInitialCopyWith(
          PostsSearchInitial value, $Res Function(PostsSearchInitial) then) =
      _$PostsSearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsSearchInitialCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res>
    implements $PostsSearchInitialCopyWith<$Res> {
  _$PostsSearchInitialCopyWithImpl(
      PostsSearchInitial _value, $Res Function(PostsSearchInitial) _then)
      : super(_value, (v) => _then(v as PostsSearchInitial));

  @override
  PostsSearchInitial get _value => super._value as PostsSearchInitial;
}

/// @nodoc

class _$PostsSearchInitial implements PostsSearchInitial {
  const _$PostsSearchInitial();

  @override
  String toString() {
    return 'PostsSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostsSearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> postsSearchResult)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
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
    required TResult Function(PostsSearchInitial value) initial,
    required TResult Function(PostsSearchInProgress value) inProgress,
    required TResult Function(PostsSearchLoadSuccess value) loadSuccess,
    required TResult Function(PostsSearchLoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PostsSearchInitial implements PostsSearchState {
  const factory PostsSearchInitial() = _$PostsSearchInitial;
}

/// @nodoc
abstract class $PostsSearchInProgressCopyWith<$Res> {
  factory $PostsSearchInProgressCopyWith(PostsSearchInProgress value,
          $Res Function(PostsSearchInProgress) then) =
      _$PostsSearchInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostsSearchInProgressCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res>
    implements $PostsSearchInProgressCopyWith<$Res> {
  _$PostsSearchInProgressCopyWithImpl(
      PostsSearchInProgress _value, $Res Function(PostsSearchInProgress) _then)
      : super(_value, (v) => _then(v as PostsSearchInProgress));

  @override
  PostsSearchInProgress get _value => super._value as PostsSearchInProgress;
}

/// @nodoc

class _$PostsSearchInProgress implements PostsSearchInProgress {
  const _$PostsSearchInProgress();

  @override
  String toString() {
    return 'PostsSearchState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostsSearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> postsSearchResult)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
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
    required TResult Function(PostsSearchInitial value) initial,
    required TResult Function(PostsSearchInProgress value) inProgress,
    required TResult Function(PostsSearchLoadSuccess value) loadSuccess,
    required TResult Function(PostsSearchLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class PostsSearchInProgress implements PostsSearchState {
  const factory PostsSearchInProgress() = _$PostsSearchInProgress;
}

/// @nodoc
abstract class $PostsSearchLoadSuccessCopyWith<$Res> {
  factory $PostsSearchLoadSuccessCopyWith(PostsSearchLoadSuccess value,
          $Res Function(PostsSearchLoadSuccess) then) =
      _$PostsSearchLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<ServicePost> postsSearchResult});
}

/// @nodoc
class _$PostsSearchLoadSuccessCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res>
    implements $PostsSearchLoadSuccessCopyWith<$Res> {
  _$PostsSearchLoadSuccessCopyWithImpl(PostsSearchLoadSuccess _value,
      $Res Function(PostsSearchLoadSuccess) _then)
      : super(_value, (v) => _then(v as PostsSearchLoadSuccess));

  @override
  PostsSearchLoadSuccess get _value => super._value as PostsSearchLoadSuccess;

  @override
  $Res call({
    Object? postsSearchResult = freezed,
  }) {
    return _then(PostsSearchLoadSuccess(
      postsSearchResult == freezed
          ? _value.postsSearchResult
          : postsSearchResult // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$PostsSearchLoadSuccess implements PostsSearchLoadSuccess {
  const _$PostsSearchLoadSuccess(this.postsSearchResult);

  @override
  final UnmodifiableListView<ServicePost> postsSearchResult;

  @override
  String toString() {
    return 'PostsSearchState.loadSuccess(postsSearchResult: $postsSearchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostsSearchLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.postsSearchResult, postsSearchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(postsSearchResult));

  @JsonKey(ignore: true)
  @override
  $PostsSearchLoadSuccessCopyWith<PostsSearchLoadSuccess> get copyWith =>
      _$PostsSearchLoadSuccessCopyWithImpl<PostsSearchLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> postsSearchResult)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)
        loadFailure,
  }) {
    return loadSuccess(postsSearchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
  }) {
    return loadSuccess?.call(postsSearchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(postsSearchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchInitial value) initial,
    required TResult Function(PostsSearchInProgress value) inProgress,
    required TResult Function(PostsSearchLoadSuccess value) loadSuccess,
    required TResult Function(PostsSearchLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class PostsSearchLoadSuccess implements PostsSearchState {
  const factory PostsSearchLoadSuccess(
          UnmodifiableListView<ServicePost> postsSearchResult) =
      _$PostsSearchLoadSuccess;

  UnmodifiableListView<ServicePost> get postsSearchResult;
  @JsonKey(ignore: true)
  $PostsSearchLoadSuccessCopyWith<PostsSearchLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSearchLoadFailureCopyWith<$Res> {
  factory $PostsSearchLoadFailureCopyWith(PostsSearchLoadFailure value,
          $Res Function(PostsSearchLoadFailure) then) =
      _$PostsSearchLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ServerException error,
      UnmodifiableListView<ServicePost> cachedSearchResult});
}

/// @nodoc
class _$PostsSearchLoadFailureCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res>
    implements $PostsSearchLoadFailureCopyWith<$Res> {
  _$PostsSearchLoadFailureCopyWithImpl(PostsSearchLoadFailure _value,
      $Res Function(PostsSearchLoadFailure) _then)
      : super(_value, (v) => _then(v as PostsSearchLoadFailure));

  @override
  PostsSearchLoadFailure get _value => super._value as PostsSearchLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedSearchResult = freezed,
  }) {
    return _then(PostsSearchLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
      cachedSearchResult == freezed
          ? _value.cachedSearchResult
          : cachedSearchResult // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ServicePost>,
    ));
  }
}

/// @nodoc

class _$PostsSearchLoadFailure implements PostsSearchLoadFailure {
  const _$PostsSearchLoadFailure(this.error, this.cachedSearchResult);

  @override
  final ServerException error;
  @override
  final UnmodifiableListView<ServicePost> cachedSearchResult;

  @override
  String toString() {
    return 'PostsSearchState.loadFailure(error: $error, cachedSearchResult: $cachedSearchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostsSearchLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.cachedSearchResult, cachedSearchResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(cachedSearchResult));

  @JsonKey(ignore: true)
  @override
  $PostsSearchLoadFailureCopyWith<PostsSearchLoadFailure> get copyWith =>
      _$PostsSearchLoadFailureCopyWithImpl<PostsSearchLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<ServicePost> postsSearchResult)
        loadSuccess,
    required TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)
        loadFailure,
  }) {
    return loadFailure(error, cachedSearchResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedSearchResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ServicePost> postsSearchResult)?
        loadSuccess,
    TResult Function(ServerException error,
            UnmodifiableListView<ServicePost> cachedSearchResult)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error, cachedSearchResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchInitial value) initial,
    required TResult Function(PostsSearchInProgress value) inProgress,
    required TResult Function(PostsSearchLoadSuccess value) loadSuccess,
    required TResult Function(PostsSearchLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchInitial value)? initial,
    TResult Function(PostsSearchInProgress value)? inProgress,
    TResult Function(PostsSearchLoadSuccess value)? loadSuccess,
    TResult Function(PostsSearchLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class PostsSearchLoadFailure implements PostsSearchState {
  const factory PostsSearchLoadFailure(ServerException error,
          UnmodifiableListView<ServicePost> cachedSearchResult) =
      _$PostsSearchLoadFailure;

  ServerException get error;
  UnmodifiableListView<ServicePost> get cachedSearchResult;
  @JsonKey(ignore: true)
  $PostsSearchLoadFailureCopyWith<PostsSearchLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
