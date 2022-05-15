// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'manage_post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ManagePostEventTearOff {
  const _$ManagePostEventTearOff();

  ManagePostCreated created(Post newPost) {
    return ManagePostCreated(
      newPost,
    );
  }

  ManagePostEdited edited(Post editPost, ParseFile? oldPostImage) {
    return ManagePostEdited(
      editPost,
      oldPostImage,
    );
  }

  ManagePostDeleted deleted(Post post) {
    return ManagePostDeleted(
      post,
    );
  }
}

/// @nodoc
const $ManagePostEvent = _$ManagePostEventTearOff();

/// @nodoc
mixin _$ManagePostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post newPost) created,
    required TResult Function(Post editPost, ParseFile? oldPostImage) edited,
    required TResult Function(Post post) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostCreated value) created,
    required TResult Function(ManagePostEdited value) edited,
    required TResult Function(ManagePostDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagePostEventCopyWith<$Res> {
  factory $ManagePostEventCopyWith(
          ManagePostEvent value, $Res Function(ManagePostEvent) then) =
      _$ManagePostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostEventCopyWithImpl<$Res>
    implements $ManagePostEventCopyWith<$Res> {
  _$ManagePostEventCopyWithImpl(this._value, this._then);

  final ManagePostEvent _value;
  // ignore: unused_field
  final $Res Function(ManagePostEvent) _then;
}

/// @nodoc
abstract class $ManagePostCreatedCopyWith<$Res> {
  factory $ManagePostCreatedCopyWith(
          ManagePostCreated value, $Res Function(ManagePostCreated) then) =
      _$ManagePostCreatedCopyWithImpl<$Res>;
  $Res call({Post newPost});
}

/// @nodoc
class _$ManagePostCreatedCopyWithImpl<$Res>
    extends _$ManagePostEventCopyWithImpl<$Res>
    implements $ManagePostCreatedCopyWith<$Res> {
  _$ManagePostCreatedCopyWithImpl(
      ManagePostCreated _value, $Res Function(ManagePostCreated) _then)
      : super(_value, (v) => _then(v as ManagePostCreated));

  @override
  ManagePostCreated get _value => super._value as ManagePostCreated;

  @override
  $Res call({
    Object? newPost = freezed,
  }) {
    return _then(ManagePostCreated(
      newPost == freezed
          ? _value.newPost
          : newPost // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$ManagePostCreated implements ManagePostCreated {
  const _$ManagePostCreated(this.newPost);

  @override
  final Post newPost;

  @override
  String toString() {
    return 'ManagePostEvent.created(newPost: $newPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManagePostCreated &&
            const DeepCollectionEquality().equals(other.newPost, newPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newPost));

  @JsonKey(ignore: true)
  @override
  $ManagePostCreatedCopyWith<ManagePostCreated> get copyWith =>
      _$ManagePostCreatedCopyWithImpl<ManagePostCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post newPost) created,
    required TResult Function(Post editPost, ParseFile? oldPostImage) edited,
    required TResult Function(Post post) deleted,
  }) {
    return created(newPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
  }) {
    return created?.call(newPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(newPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostCreated value) created,
    required TResult Function(ManagePostEdited value) edited,
    required TResult Function(ManagePostDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }
}

abstract class ManagePostCreated implements ManagePostEvent {
  const factory ManagePostCreated(Post newPost) = _$ManagePostCreated;

  Post get newPost;
  @JsonKey(ignore: true)
  $ManagePostCreatedCopyWith<ManagePostCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagePostEditedCopyWith<$Res> {
  factory $ManagePostEditedCopyWith(
          ManagePostEdited value, $Res Function(ManagePostEdited) then) =
      _$ManagePostEditedCopyWithImpl<$Res>;
  $Res call({Post editPost, ParseFile? oldPostImage});
}

/// @nodoc
class _$ManagePostEditedCopyWithImpl<$Res>
    extends _$ManagePostEventCopyWithImpl<$Res>
    implements $ManagePostEditedCopyWith<$Res> {
  _$ManagePostEditedCopyWithImpl(
      ManagePostEdited _value, $Res Function(ManagePostEdited) _then)
      : super(_value, (v) => _then(v as ManagePostEdited));

  @override
  ManagePostEdited get _value => super._value as ManagePostEdited;

  @override
  $Res call({
    Object? editPost = freezed,
    Object? oldPostImage = freezed,
  }) {
    return _then(ManagePostEdited(
      editPost == freezed
          ? _value.editPost
          : editPost // ignore: cast_nullable_to_non_nullable
              as Post,
      oldPostImage == freezed
          ? _value.oldPostImage
          : oldPostImage // ignore: cast_nullable_to_non_nullable
              as ParseFile?,
    ));
  }
}

/// @nodoc

class _$ManagePostEdited implements ManagePostEdited {
  const _$ManagePostEdited(this.editPost, this.oldPostImage);

  @override
  final Post editPost;
  @override
  final ParseFile? oldPostImage;

  @override
  String toString() {
    return 'ManagePostEvent.edited(editPost: $editPost, oldPostImage: $oldPostImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManagePostEdited &&
            const DeepCollectionEquality().equals(other.editPost, editPost) &&
            const DeepCollectionEquality()
                .equals(other.oldPostImage, oldPostImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(editPost),
      const DeepCollectionEquality().hash(oldPostImage));

  @JsonKey(ignore: true)
  @override
  $ManagePostEditedCopyWith<ManagePostEdited> get copyWith =>
      _$ManagePostEditedCopyWithImpl<ManagePostEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post newPost) created,
    required TResult Function(Post editPost, ParseFile? oldPostImage) edited,
    required TResult Function(Post post) deleted,
  }) {
    return edited(editPost, oldPostImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
  }) {
    return edited?.call(editPost, oldPostImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(editPost, oldPostImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostCreated value) created,
    required TResult Function(ManagePostEdited value) edited,
    required TResult Function(ManagePostDeleted value) deleted,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class ManagePostEdited implements ManagePostEvent {
  const factory ManagePostEdited(Post editPost, ParseFile? oldPostImage) =
      _$ManagePostEdited;

  Post get editPost;
  ParseFile? get oldPostImage;
  @JsonKey(ignore: true)
  $ManagePostEditedCopyWith<ManagePostEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagePostDeletedCopyWith<$Res> {
  factory $ManagePostDeletedCopyWith(
          ManagePostDeleted value, $Res Function(ManagePostDeleted) then) =
      _$ManagePostDeletedCopyWithImpl<$Res>;
  $Res call({Post post});
}

/// @nodoc
class _$ManagePostDeletedCopyWithImpl<$Res>
    extends _$ManagePostEventCopyWithImpl<$Res>
    implements $ManagePostDeletedCopyWith<$Res> {
  _$ManagePostDeletedCopyWithImpl(
      ManagePostDeleted _value, $Res Function(ManagePostDeleted) _then)
      : super(_value, (v) => _then(v as ManagePostDeleted));

  @override
  ManagePostDeleted get _value => super._value as ManagePostDeleted;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(ManagePostDeleted(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class _$ManagePostDeleted implements ManagePostDeleted {
  const _$ManagePostDeleted(this.post);

  @override
  final Post post;

  @override
  String toString() {
    return 'ManagePostEvent.deleted(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManagePostDeleted &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $ManagePostDeletedCopyWith<ManagePostDeleted> get copyWith =>
      _$ManagePostDeletedCopyWithImpl<ManagePostDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post newPost) created,
    required TResult Function(Post editPost, ParseFile? oldPostImage) edited,
    required TResult Function(Post post) deleted,
  }) {
    return deleted(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
  }) {
    return deleted?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post newPost)? created,
    TResult Function(Post editPost, ParseFile? oldPostImage)? edited,
    TResult Function(Post post)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostCreated value) created,
    required TResult Function(ManagePostEdited value) edited,
    required TResult Function(ManagePostDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostCreated value)? created,
    TResult Function(ManagePostEdited value)? edited,
    TResult Function(ManagePostDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class ManagePostDeleted implements ManagePostEvent {
  const factory ManagePostDeleted(Post post) = _$ManagePostDeleted;

  Post get post;
  @JsonKey(ignore: true)
  $ManagePostDeletedCopyWith<ManagePostDeleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ManagePostStateTearOff {
  const _$ManagePostStateTearOff();

  ManagePostInitial initial() {
    return const ManagePostInitial();
  }

  ManagePostInProgress inProgress() {
    return const ManagePostInProgress();
  }

  ManagePostCreateSuccuss createSuccuss() {
    return const ManagePostCreateSuccuss();
  }

  ManagePostEditSuccuss editSuccuss() {
    return const ManagePostEditSuccuss();
  }

  ManagePostDeleteSuccuss deleteSuccuss() {
    return const ManagePostDeleteSuccuss();
  }

  ManagePostOperationFailure operationFailure(ExceptionBase error) {
    return ManagePostOperationFailure(
      error,
    );
  }
}

/// @nodoc
const $ManagePostState = _$ManagePostStateTearOff();

/// @nodoc
mixin _$ManagePostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagePostStateCopyWith<$Res> {
  factory $ManagePostStateCopyWith(
          ManagePostState value, $Res Function(ManagePostState) then) =
      _$ManagePostStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostStateCopyWith<$Res> {
  _$ManagePostStateCopyWithImpl(this._value, this._then);

  final ManagePostState _value;
  // ignore: unused_field
  final $Res Function(ManagePostState) _then;
}

/// @nodoc
abstract class $ManagePostInitialCopyWith<$Res> {
  factory $ManagePostInitialCopyWith(
          ManagePostInitial value, $Res Function(ManagePostInitial) then) =
      _$ManagePostInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostInitialCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostInitialCopyWith<$Res> {
  _$ManagePostInitialCopyWithImpl(
      ManagePostInitial _value, $Res Function(ManagePostInitial) _then)
      : super(_value, (v) => _then(v as ManagePostInitial));

  @override
  ManagePostInitial get _value => super._value as ManagePostInitial;
}

/// @nodoc

class _$ManagePostInitial implements ManagePostInitial {
  const _$ManagePostInitial();

  @override
  String toString() {
    return 'ManagePostState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManagePostInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
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
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ManagePostInitial implements ManagePostState {
  const factory ManagePostInitial() = _$ManagePostInitial;
}

/// @nodoc
abstract class $ManagePostInProgressCopyWith<$Res> {
  factory $ManagePostInProgressCopyWith(ManagePostInProgress value,
          $Res Function(ManagePostInProgress) then) =
      _$ManagePostInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostInProgressCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostInProgressCopyWith<$Res> {
  _$ManagePostInProgressCopyWithImpl(
      ManagePostInProgress _value, $Res Function(ManagePostInProgress) _then)
      : super(_value, (v) => _then(v as ManagePostInProgress));

  @override
  ManagePostInProgress get _value => super._value as ManagePostInProgress;
}

/// @nodoc

class _$ManagePostInProgress implements ManagePostInProgress {
  const _$ManagePostInProgress();

  @override
  String toString() {
    return 'ManagePostState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManagePostInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
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
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class ManagePostInProgress implements ManagePostState {
  const factory ManagePostInProgress() = _$ManagePostInProgress;
}

/// @nodoc
abstract class $ManagePostCreateSuccussCopyWith<$Res> {
  factory $ManagePostCreateSuccussCopyWith(ManagePostCreateSuccuss value,
          $Res Function(ManagePostCreateSuccuss) then) =
      _$ManagePostCreateSuccussCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostCreateSuccussCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostCreateSuccussCopyWith<$Res> {
  _$ManagePostCreateSuccussCopyWithImpl(ManagePostCreateSuccuss _value,
      $Res Function(ManagePostCreateSuccuss) _then)
      : super(_value, (v) => _then(v as ManagePostCreateSuccuss));

  @override
  ManagePostCreateSuccuss get _value => super._value as ManagePostCreateSuccuss;
}

/// @nodoc

class _$ManagePostCreateSuccuss implements ManagePostCreateSuccuss {
  const _$ManagePostCreateSuccuss();

  @override
  String toString() {
    return 'ManagePostState.createSuccuss()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManagePostCreateSuccuss);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return createSuccuss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return createSuccuss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
    required TResult orElse(),
  }) {
    if (createSuccuss != null) {
      return createSuccuss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return createSuccuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return createSuccuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (createSuccuss != null) {
      return createSuccuss(this);
    }
    return orElse();
  }
}

abstract class ManagePostCreateSuccuss implements ManagePostState {
  const factory ManagePostCreateSuccuss() = _$ManagePostCreateSuccuss;
}

/// @nodoc
abstract class $ManagePostEditSuccussCopyWith<$Res> {
  factory $ManagePostEditSuccussCopyWith(ManagePostEditSuccuss value,
          $Res Function(ManagePostEditSuccuss) then) =
      _$ManagePostEditSuccussCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostEditSuccussCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostEditSuccussCopyWith<$Res> {
  _$ManagePostEditSuccussCopyWithImpl(
      ManagePostEditSuccuss _value, $Res Function(ManagePostEditSuccuss) _then)
      : super(_value, (v) => _then(v as ManagePostEditSuccuss));

  @override
  ManagePostEditSuccuss get _value => super._value as ManagePostEditSuccuss;
}

/// @nodoc

class _$ManagePostEditSuccuss implements ManagePostEditSuccuss {
  const _$ManagePostEditSuccuss();

  @override
  String toString() {
    return 'ManagePostState.editSuccuss()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManagePostEditSuccuss);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return editSuccuss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return editSuccuss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
    required TResult orElse(),
  }) {
    if (editSuccuss != null) {
      return editSuccuss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return editSuccuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return editSuccuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (editSuccuss != null) {
      return editSuccuss(this);
    }
    return orElse();
  }
}

abstract class ManagePostEditSuccuss implements ManagePostState {
  const factory ManagePostEditSuccuss() = _$ManagePostEditSuccuss;
}

/// @nodoc
abstract class $ManagePostDeleteSuccussCopyWith<$Res> {
  factory $ManagePostDeleteSuccussCopyWith(ManagePostDeleteSuccuss value,
          $Res Function(ManagePostDeleteSuccuss) then) =
      _$ManagePostDeleteSuccussCopyWithImpl<$Res>;
}

/// @nodoc
class _$ManagePostDeleteSuccussCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostDeleteSuccussCopyWith<$Res> {
  _$ManagePostDeleteSuccussCopyWithImpl(ManagePostDeleteSuccuss _value,
      $Res Function(ManagePostDeleteSuccuss) _then)
      : super(_value, (v) => _then(v as ManagePostDeleteSuccuss));

  @override
  ManagePostDeleteSuccuss get _value => super._value as ManagePostDeleteSuccuss;
}

/// @nodoc

class _$ManagePostDeleteSuccuss implements ManagePostDeleteSuccuss {
  const _$ManagePostDeleteSuccuss();

  @override
  String toString() {
    return 'ManagePostState.deleteSuccuss()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ManagePostDeleteSuccuss);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return deleteSuccuss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return deleteSuccuss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccuss != null) {
      return deleteSuccuss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return deleteSuccuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return deleteSuccuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (deleteSuccuss != null) {
      return deleteSuccuss(this);
    }
    return orElse();
  }
}

abstract class ManagePostDeleteSuccuss implements ManagePostState {
  const factory ManagePostDeleteSuccuss() = _$ManagePostDeleteSuccuss;
}

/// @nodoc
abstract class $ManagePostOperationFailureCopyWith<$Res> {
  factory $ManagePostOperationFailureCopyWith(ManagePostOperationFailure value,
          $Res Function(ManagePostOperationFailure) then) =
      _$ManagePostOperationFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$ManagePostOperationFailureCopyWithImpl<$Res>
    extends _$ManagePostStateCopyWithImpl<$Res>
    implements $ManagePostOperationFailureCopyWith<$Res> {
  _$ManagePostOperationFailureCopyWithImpl(ManagePostOperationFailure _value,
      $Res Function(ManagePostOperationFailure) _then)
      : super(_value, (v) => _then(v as ManagePostOperationFailure));

  @override
  ManagePostOperationFailure get _value =>
      super._value as ManagePostOperationFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ManagePostOperationFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$ManagePostOperationFailure implements ManagePostOperationFailure {
  const _$ManagePostOperationFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'ManagePostState.operationFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ManagePostOperationFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ManagePostOperationFailureCopyWith<ManagePostOperationFailure>
      get copyWith =>
          _$ManagePostOperationFailureCopyWithImpl<ManagePostOperationFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() createSuccuss,
    required TResult Function() editSuccuss,
    required TResult Function() deleteSuccuss,
    required TResult Function(ExceptionBase error) operationFailure,
  }) {
    return operationFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
  }) {
    return operationFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? createSuccuss,
    TResult Function()? editSuccuss,
    TResult Function()? deleteSuccuss,
    TResult Function(ExceptionBase error)? operationFailure,
    required TResult orElse(),
  }) {
    if (operationFailure != null) {
      return operationFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ManagePostInitial value) initial,
    required TResult Function(ManagePostInProgress value) inProgress,
    required TResult Function(ManagePostCreateSuccuss value) createSuccuss,
    required TResult Function(ManagePostEditSuccuss value) editSuccuss,
    required TResult Function(ManagePostDeleteSuccuss value) deleteSuccuss,
    required TResult Function(ManagePostOperationFailure value)
        operationFailure,
  }) {
    return operationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
  }) {
    return operationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ManagePostInitial value)? initial,
    TResult Function(ManagePostInProgress value)? inProgress,
    TResult Function(ManagePostCreateSuccuss value)? createSuccuss,
    TResult Function(ManagePostEditSuccuss value)? editSuccuss,
    TResult Function(ManagePostDeleteSuccuss value)? deleteSuccuss,
    TResult Function(ManagePostOperationFailure value)? operationFailure,
    required TResult orElse(),
  }) {
    if (operationFailure != null) {
      return operationFailure(this);
    }
    return orElse();
  }
}

abstract class ManagePostOperationFailure implements ManagePostState {
  const factory ManagePostOperationFailure(ExceptionBase error) =
      _$ManagePostOperationFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $ManagePostOperationFailureCopyWith<ManagePostOperationFailure>
      get copyWith => throw _privateConstructorUsedError;
}
