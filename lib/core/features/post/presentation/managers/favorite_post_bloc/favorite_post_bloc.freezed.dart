// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoritePostEventTearOff {
  const _$FavoritePostEventTearOff();

  FavoritePostAddPostToFavoriteList addPostToFavoriteList(Post post) {
    return FavoritePostAddPostToFavoriteList(
      post,
    );
  }

  FavoritePostRemovePostFromFavoriteList removePostFromFavoriteList(
      Post favoritePost) {
    return FavoritePostRemovePostFromFavoriteList(
      favoritePost,
    );
  }

  FavoritePostIsFavoritePost isFavoritePost(Post post) {
    return FavoritePostIsFavoritePost(
      post,
    );
  }
}

/// @nodoc
const $FavoritePostEvent = _$FavoritePostEventTearOff();

/// @nodoc
mixin _$FavoritePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) addPostToFavoriteList,
    required TResult Function(Post favoritePost) removePostFromFavoriteList,
    required TResult Function(Post post) isFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostAddPostToFavoriteList value)
        addPostToFavoriteList,
    required TResult Function(FavoritePostRemovePostFromFavoriteList value)
        removePostFromFavoriteList,
    required TResult Function(FavoritePostIsFavoritePost value) isFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostEventCopyWith<$Res> {
  factory $FavoritePostEventCopyWith(
          FavoritePostEvent value, $Res Function(FavoritePostEvent) then) =
      _$FavoritePostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostEventCopyWithImpl<$Res>
    implements $FavoritePostEventCopyWith<$Res> {
  _$FavoritePostEventCopyWithImpl(this._value, this._then);

  final FavoritePostEvent _value;
  // ignore: unused_field
  final $Res Function(FavoritePostEvent) _then;
}

/// @nodoc
abstract class $FavoritePostAddPostToFavoriteListCopyWith<$Res> {
  factory $FavoritePostAddPostToFavoriteListCopyWith(
          FavoritePostAddPostToFavoriteList value,
          $Res Function(FavoritePostAddPostToFavoriteList) then) =
      _$FavoritePostAddPostToFavoriteListCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$FavoritePostAddPostToFavoriteListCopyWithImpl<$Res>
    extends _$FavoritePostEventCopyWithImpl<$Res>
    implements $FavoritePostAddPostToFavoriteListCopyWith<$Res> {
  _$FavoritePostAddPostToFavoriteListCopyWithImpl(
      FavoritePostAddPostToFavoriteList _value,
      $Res Function(FavoritePostAddPostToFavoriteList) _then)
      : super(_value, (v) => _then(v as FavoritePostAddPostToFavoriteList));

  @override
  FavoritePostAddPostToFavoriteList get _value =>
      super._value as FavoritePostAddPostToFavoriteList;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(FavoritePostAddPostToFavoriteList(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$FavoritePostAddPostToFavoriteList
    implements FavoritePostAddPostToFavoriteList {
  const _$FavoritePostAddPostToFavoriteList(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'FavoritePostEvent.addPostToFavoriteList(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostAddPostToFavoriteList &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $FavoritePostAddPostToFavoriteListCopyWith<FavoritePostAddPostToFavoriteList>
      get copyWith => _$FavoritePostAddPostToFavoriteListCopyWithImpl<
          FavoritePostAddPostToFavoriteList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) addPostToFavoriteList,
    required TResult Function(Post favoritePost) removePostFromFavoriteList,
    required TResult Function(Post post) isFavoritePost,
  }) {
    return addPostToFavoriteList(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
  }) {
    return addPostToFavoriteList?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (addPostToFavoriteList != null) {
      return addPostToFavoriteList(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostAddPostToFavoriteList value)
        addPostToFavoriteList,
    required TResult Function(FavoritePostRemovePostFromFavoriteList value)
        removePostFromFavoriteList,
    required TResult Function(FavoritePostIsFavoritePost value) isFavoritePost,
  }) {
    return addPostToFavoriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
  }) {
    return addPostToFavoriteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (addPostToFavoriteList != null) {
      return addPostToFavoriteList(this);
    }
    return orElse();
  }
}

abstract class FavoritePostAddPostToFavoriteList implements FavoritePostEvent {
  const factory FavoritePostAddPostToFavoriteList(Post post) =
      _$FavoritePostAddPostToFavoriteList;

  Post get post;
  @JsonKey(ignore: true)
  $FavoritePostAddPostToFavoriteListCopyWith<FavoritePostAddPostToFavoriteList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostRemovePostFromFavoriteListCopyWith<$Res> {
  factory $FavoritePostRemovePostFromFavoriteListCopyWith(
          FavoritePostRemovePostFromFavoriteList value,
          $Res Function(FavoritePostRemovePostFromFavoriteList) then) =
      _$FavoritePostRemovePostFromFavoriteListCopyWithImpl<$Res>;
  $Res call({Post favoritePost});
}

/// @nodoc
class _$FavoritePostRemovePostFromFavoriteListCopyWithImpl<$Res>
    extends _$FavoritePostEventCopyWithImpl<$Res>
    implements $FavoritePostRemovePostFromFavoriteListCopyWith<$Res> {
  _$FavoritePostRemovePostFromFavoriteListCopyWithImpl(
      FavoritePostRemovePostFromFavoriteList _value,
      $Res Function(FavoritePostRemovePostFromFavoriteList) _then)
      : super(
            _value, (v) => _then(v as FavoritePostRemovePostFromFavoriteList));

  @override
  FavoritePostRemovePostFromFavoriteList get _value =>
      super._value as FavoritePostRemovePostFromFavoriteList;

  @override
  $Res call({
    Object? favoritePost = freezed,
  }) {
    return _then(FavoritePostRemovePostFromFavoriteList(
      favoritePost == freezed
          ? _value.favoritePost
          : favoritePost // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$FavoritePostRemovePostFromFavoriteList
    implements FavoritePostRemovePostFromFavoriteList {
  const _$FavoritePostRemovePostFromFavoriteList(this.favoritePost);

  @override
  final Post favoritePost;

  @override
  String toString() {
    return 'FavoritePostEvent.removePostFromFavoriteList(favoritePost: $favoritePost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostRemovePostFromFavoriteList &&
            const DeepCollectionEquality()
                .equals(other.favoritePost, favoritePost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(favoritePost));

  @JsonKey(ignore: true)
  @override
  $FavoritePostRemovePostFromFavoriteListCopyWith<
          FavoritePostRemovePostFromFavoriteList>
      get copyWith => _$FavoritePostRemovePostFromFavoriteListCopyWithImpl<
          FavoritePostRemovePostFromFavoriteList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) addPostToFavoriteList,
    required TResult Function(Post favoritePost) removePostFromFavoriteList,
    required TResult Function(Post post) isFavoritePost,
  }) {
    return removePostFromFavoriteList(favoritePost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
  }) {
    return removePostFromFavoriteList?.call(favoritePost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (removePostFromFavoriteList != null) {
      return removePostFromFavoriteList(favoritePost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostAddPostToFavoriteList value)
        addPostToFavoriteList,
    required TResult Function(FavoritePostRemovePostFromFavoriteList value)
        removePostFromFavoriteList,
    required TResult Function(FavoritePostIsFavoritePost value) isFavoritePost,
  }) {
    return removePostFromFavoriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
  }) {
    return removePostFromFavoriteList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (removePostFromFavoriteList != null) {
      return removePostFromFavoriteList(this);
    }
    return orElse();
  }
}

abstract class FavoritePostRemovePostFromFavoriteList
    implements FavoritePostEvent {
  const factory FavoritePostRemovePostFromFavoriteList(Post favoritePost) =
      _$FavoritePostRemovePostFromFavoriteList;

  Post get favoritePost;
  @JsonKey(ignore: true)
  $FavoritePostRemovePostFromFavoriteListCopyWith<
          FavoritePostRemovePostFromFavoriteList>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostIsFavoritePostCopyWith<$Res> {
  factory $FavoritePostIsFavoritePostCopyWith(FavoritePostIsFavoritePost value,
          $Res Function(FavoritePostIsFavoritePost) then) =
      _$FavoritePostIsFavoritePostCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$FavoritePostIsFavoritePostCopyWithImpl<$Res>
    extends _$FavoritePostEventCopyWithImpl<$Res>
    implements $FavoritePostIsFavoritePostCopyWith<$Res> {
  _$FavoritePostIsFavoritePostCopyWithImpl(FavoritePostIsFavoritePost _value,
      $Res Function(FavoritePostIsFavoritePost) _then)
      : super(_value, (v) => _then(v as FavoritePostIsFavoritePost));

  @override
  FavoritePostIsFavoritePost get _value =>
      super._value as FavoritePostIsFavoritePost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(FavoritePostIsFavoritePost(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$FavoritePostIsFavoritePost implements FavoritePostIsFavoritePost {
  const _$FavoritePostIsFavoritePost(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'FavoritePostEvent.isFavoritePost(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostIsFavoritePost &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $FavoritePostIsFavoritePostCopyWith<FavoritePostIsFavoritePost>
      get copyWith =>
          _$FavoritePostIsFavoritePostCopyWithImpl<FavoritePostIsFavoritePost>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) addPostToFavoriteList,
    required TResult Function(Post favoritePost) removePostFromFavoriteList,
    required TResult Function(Post post) isFavoritePost,
  }) {
    return isFavoritePost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
  }) {
    return isFavoritePost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? addPostToFavoriteList,
    TResult Function(Post favoritePost)? removePostFromFavoriteList,
    TResult Function(Post post)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (isFavoritePost != null) {
      return isFavoritePost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostAddPostToFavoriteList value)
        addPostToFavoriteList,
    required TResult Function(FavoritePostRemovePostFromFavoriteList value)
        removePostFromFavoriteList,
    required TResult Function(FavoritePostIsFavoritePost value) isFavoritePost,
  }) {
    return isFavoritePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
  }) {
    return isFavoritePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostAddPostToFavoriteList value)?
        addPostToFavoriteList,
    TResult Function(FavoritePostRemovePostFromFavoriteList value)?
        removePostFromFavoriteList,
    TResult Function(FavoritePostIsFavoritePost value)? isFavoritePost,
    required TResult orElse(),
  }) {
    if (isFavoritePost != null) {
      return isFavoritePost(this);
    }
    return orElse();
  }
}

abstract class FavoritePostIsFavoritePost implements FavoritePostEvent {
  const factory FavoritePostIsFavoritePost(Post post) =
      _$FavoritePostIsFavoritePost;

  Post get post;
  @JsonKey(ignore: true)
  $FavoritePostIsFavoritePostCopyWith<FavoritePostIsFavoritePost>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$FavoritePostStateTearOff {
  const _$FavoritePostStateTearOff();

  FavoritePostInProgress inProgress() {
    return const FavoritePostInProgress();
  }

  FavoritePostLoadSuccess loadSuccess(bool isFavorite) {
    return FavoritePostLoadSuccess(
      isFavorite,
    );
  }

  FavoritePostLoadFailure loadFailure(ServerException exception) {
    return FavoritePostLoadFailure(
      exception,
    );
  }
}

/// @nodoc
const $FavoritePostState = _$FavoritePostStateTearOff();

/// @nodoc
mixin _$FavoritePostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(bool isFavorite) loadSuccess,
    required TResult Function(ServerException exception) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostInProgress value) inProgress,
    required TResult Function(FavoritePostLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostStateCopyWith<$Res> {
  factory $FavoritePostStateCopyWith(
          FavoritePostState value, $Res Function(FavoritePostState) then) =
      _$FavoritePostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostStateCopyWithImpl<$Res>
    implements $FavoritePostStateCopyWith<$Res> {
  _$FavoritePostStateCopyWithImpl(this._value, this._then);

  final FavoritePostState _value;
  // ignore: unused_field
  final $Res Function(FavoritePostState) _then;
}

/// @nodoc
abstract class $FavoritePostInProgressCopyWith<$Res> {
  factory $FavoritePostInProgressCopyWith(FavoritePostInProgress value,
          $Res Function(FavoritePostInProgress) then) =
      _$FavoritePostInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoritePostInProgressCopyWithImpl<$Res>
    extends _$FavoritePostStateCopyWithImpl<$Res>
    implements $FavoritePostInProgressCopyWith<$Res> {
  _$FavoritePostInProgressCopyWithImpl(FavoritePostInProgress _value,
      $Res Function(FavoritePostInProgress) _then)
      : super(_value, (v) => _then(v as FavoritePostInProgress));

  @override
  FavoritePostInProgress get _value => super._value as FavoritePostInProgress;
}

/// @nodoc

class _$FavoritePostInProgress implements FavoritePostInProgress {
  const _$FavoritePostInProgress();

  @override
  String toString() {
    return 'FavoritePostState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritePostInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(bool isFavorite) loadSuccess,
    required TResult Function(ServerException exception) loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
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
    required TResult Function(FavoritePostInProgress value) inProgress,
    required TResult Function(FavoritePostLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class FavoritePostInProgress implements FavoritePostState {
  const factory FavoritePostInProgress() = _$FavoritePostInProgress;
}

/// @nodoc
abstract class $FavoritePostLoadSuccessCopyWith<$Res> {
  factory $FavoritePostLoadSuccessCopyWith(FavoritePostLoadSuccess value,
          $Res Function(FavoritePostLoadSuccess) then) =
      _$FavoritePostLoadSuccessCopyWithImpl<$Res>;
  $Res call({bool isFavorite});
}

/// @nodoc
class _$FavoritePostLoadSuccessCopyWithImpl<$Res>
    extends _$FavoritePostStateCopyWithImpl<$Res>
    implements $FavoritePostLoadSuccessCopyWith<$Res> {
  _$FavoritePostLoadSuccessCopyWithImpl(FavoritePostLoadSuccess _value,
      $Res Function(FavoritePostLoadSuccess) _then)
      : super(_value, (v) => _then(v as FavoritePostLoadSuccess));

  @override
  FavoritePostLoadSuccess get _value => super._value as FavoritePostLoadSuccess;

  @override
  $Res call({
    Object? isFavorite = freezed,
  }) {
    return _then(FavoritePostLoadSuccess(
      isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavoritePostLoadSuccess implements FavoritePostLoadSuccess {
  const _$FavoritePostLoadSuccess(this.isFavorite);

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'FavoritePostState.loadSuccess(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.isFavorite, isFavorite));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isFavorite));

  @JsonKey(ignore: true)
  @override
  $FavoritePostLoadSuccessCopyWith<FavoritePostLoadSuccess> get copyWith =>
      _$FavoritePostLoadSuccessCopyWithImpl<FavoritePostLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(bool isFavorite) loadSuccess,
    required TResult Function(ServerException exception) loadFailure,
  }) {
    return loadSuccess(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
  }) {
    return loadSuccess?.call(isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostInProgress value) inProgress,
    required TResult Function(FavoritePostLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class FavoritePostLoadSuccess implements FavoritePostState {
  const factory FavoritePostLoadSuccess(bool isFavorite) =
      _$FavoritePostLoadSuccess;

  bool get isFavorite;
  @JsonKey(ignore: true)
  $FavoritePostLoadSuccessCopyWith<FavoritePostLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePostLoadFailureCopyWith<$Res> {
  factory $FavoritePostLoadFailureCopyWith(FavoritePostLoadFailure value,
          $Res Function(FavoritePostLoadFailure) then) =
      _$FavoritePostLoadFailureCopyWithImpl<$Res>;
  $Res call({ServerException exception});
}

/// @nodoc
class _$FavoritePostLoadFailureCopyWithImpl<$Res>
    extends _$FavoritePostStateCopyWithImpl<$Res>
    implements $FavoritePostLoadFailureCopyWith<$Res> {
  _$FavoritePostLoadFailureCopyWithImpl(FavoritePostLoadFailure _value,
      $Res Function(FavoritePostLoadFailure) _then)
      : super(_value, (v) => _then(v as FavoritePostLoadFailure));

  @override
  FavoritePostLoadFailure get _value => super._value as FavoritePostLoadFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(FavoritePostLoadFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$FavoritePostLoadFailure implements FavoritePostLoadFailure {
  const _$FavoritePostLoadFailure(this.exception);

  @override
  final ServerException exception;

  @override
  String toString() {
    return 'FavoritePostState.loadFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoritePostLoadFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $FavoritePostLoadFailureCopyWith<FavoritePostLoadFailure> get copyWith =>
      _$FavoritePostLoadFailureCopyWithImpl<FavoritePostLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(bool isFavorite) loadSuccess,
    required TResult Function(ServerException exception) loadFailure,
  }) {
    return loadFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
  }) {
    return loadFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(bool isFavorite)? loadSuccess,
    TResult Function(ServerException exception)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritePostInProgress value) inProgress,
    required TResult Function(FavoritePostLoadSuccess value) loadSuccess,
    required TResult Function(FavoritePostLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritePostInProgress value)? inProgress,
    TResult Function(FavoritePostLoadSuccess value)? loadSuccess,
    TResult Function(FavoritePostLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class FavoritePostLoadFailure implements FavoritePostState {
  const factory FavoritePostLoadFailure(ServerException exception) =
      _$FavoritePostLoadFailure;

  ServerException get exception;
  @JsonKey(ignore: true)
  $FavoritePostLoadFailureCopyWith<FavoritePostLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
