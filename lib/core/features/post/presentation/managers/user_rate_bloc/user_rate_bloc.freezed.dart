// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_rate_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserRateEventTearOff {
  const _$UserRateEventTearOff();

  UserRateLoaded loaded(ServicePost post) {
    return UserRateLoaded(
      post,
    );
  }

  UserRatePosted posted(PostRate postRate) {
    return UserRatePosted(
      postRate,
    );
  }
}

/// @nodoc
const $UserRateEvent = _$UserRateEventTearOff();

/// @nodoc
mixin _$UserRateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePost post) loaded,
    required TResult Function(PostRate postRate) posted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateLoaded value) loaded,
    required TResult Function(UserRatePosted value) posted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRateEventCopyWith<$Res> {
  factory $UserRateEventCopyWith(
          UserRateEvent value, $Res Function(UserRateEvent) then) =
      _$UserRateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserRateEventCopyWithImpl<$Res>
    implements $UserRateEventCopyWith<$Res> {
  _$UserRateEventCopyWithImpl(this._value, this._then);

  final UserRateEvent _value;
  // ignore: unused_field
  final $Res Function(UserRateEvent) _then;
}

/// @nodoc
abstract class $UserRateLoadedCopyWith<$Res> {
  factory $UserRateLoadedCopyWith(
          UserRateLoaded value, $Res Function(UserRateLoaded) then) =
      _$UserRateLoadedCopyWithImpl<$Res>;
  $Res call({ServicePost post});
}

/// @nodoc
class _$UserRateLoadedCopyWithImpl<$Res>
    extends _$UserRateEventCopyWithImpl<$Res>
    implements $UserRateLoadedCopyWith<$Res> {
  _$UserRateLoadedCopyWithImpl(
      UserRateLoaded _value, $Res Function(UserRateLoaded) _then)
      : super(_value, (v) => _then(v as UserRateLoaded));

  @override
  UserRateLoaded get _value => super._value as UserRateLoaded;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(UserRateLoaded(
      post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as ServicePost,
    ));
  }
}

/// @nodoc

class _$UserRateLoaded implements UserRateLoaded {
  const _$UserRateLoaded(this.post);

  @override
  final ServicePost post;

  @override
  String toString() {
    return 'UserRateEvent.loaded(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRateLoaded &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  $UserRateLoadedCopyWith<UserRateLoaded> get copyWith =>
      _$UserRateLoadedCopyWithImpl<UserRateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePost post) loaded,
    required TResult Function(PostRate postRate) posted,
  }) {
    return loaded(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
  }) {
    return loaded?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateLoaded value) loaded,
    required TResult Function(UserRatePosted value) posted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserRateLoaded implements UserRateEvent {
  const factory UserRateLoaded(ServicePost post) = _$UserRateLoaded;

  ServicePost get post;
  @JsonKey(ignore: true)
  $UserRateLoadedCopyWith<UserRateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatePostedCopyWith<$Res> {
  factory $UserRatePostedCopyWith(
          UserRatePosted value, $Res Function(UserRatePosted) then) =
      _$UserRatePostedCopyWithImpl<$Res>;
  $Res call({PostRate postRate});
}

/// @nodoc
class _$UserRatePostedCopyWithImpl<$Res>
    extends _$UserRateEventCopyWithImpl<$Res>
    implements $UserRatePostedCopyWith<$Res> {
  _$UserRatePostedCopyWithImpl(
      UserRatePosted _value, $Res Function(UserRatePosted) _then)
      : super(_value, (v) => _then(v as UserRatePosted));

  @override
  UserRatePosted get _value => super._value as UserRatePosted;

  @override
  $Res call({
    Object? postRate = freezed,
  }) {
    return _then(UserRatePosted(
      postRate == freezed
          ? _value.postRate
          : postRate // ignore: cast_nullable_to_non_nullable
              as PostRate,
    ));
  }
}

/// @nodoc

class _$UserRatePosted implements UserRatePosted {
  const _$UserRatePosted(this.postRate);

  @override
  final PostRate postRate;

  @override
  String toString() {
    return 'UserRateEvent.posted(postRate: $postRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRatePosted &&
            const DeepCollectionEquality().equals(other.postRate, postRate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postRate));

  @JsonKey(ignore: true)
  @override
  $UserRatePostedCopyWith<UserRatePosted> get copyWith =>
      _$UserRatePostedCopyWithImpl<UserRatePosted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ServicePost post) loaded,
    required TResult Function(PostRate postRate) posted,
  }) {
    return posted(postRate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
  }) {
    return posted?.call(postRate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ServicePost post)? loaded,
    TResult Function(PostRate postRate)? posted,
    required TResult orElse(),
  }) {
    if (posted != null) {
      return posted(postRate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateLoaded value) loaded,
    required TResult Function(UserRatePosted value) posted,
  }) {
    return posted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
  }) {
    return posted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateLoaded value)? loaded,
    TResult Function(UserRatePosted value)? posted,
    required TResult orElse(),
  }) {
    if (posted != null) {
      return posted(this);
    }
    return orElse();
  }
}

abstract class UserRatePosted implements UserRateEvent {
  const factory UserRatePosted(PostRate postRate) = _$UserRatePosted;

  PostRate get postRate;
  @JsonKey(ignore: true)
  $UserRatePostedCopyWith<UserRatePosted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserRateStateTearOff {
  const _$UserRateStateTearOff();

  UserRateInProgress inProgress() {
    return const UserRateInProgress();
  }

  UserRateLoadSuccess loadSuccess(PostRate? postRate) {
    return UserRateLoadSuccess(
      postRate,
    );
  }

  UserRateLoadFailure loadFailure(ExceptionBase error) {
    return UserRateLoadFailure(
      error,
    );
  }
}

/// @nodoc
const $UserRateState = _$UserRateStateTearOff();

/// @nodoc
mixin _$UserRateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(PostRate? postRate) loadSuccess,
    required TResult Function(ExceptionBase error) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateInProgress value) inProgress,
    required TResult Function(UserRateLoadSuccess value) loadSuccess,
    required TResult Function(UserRateLoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRateStateCopyWith<$Res> {
  factory $UserRateStateCopyWith(
          UserRateState value, $Res Function(UserRateState) then) =
      _$UserRateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserRateStateCopyWithImpl<$Res>
    implements $UserRateStateCopyWith<$Res> {
  _$UserRateStateCopyWithImpl(this._value, this._then);

  final UserRateState _value;
  // ignore: unused_field
  final $Res Function(UserRateState) _then;
}

/// @nodoc
abstract class $UserRateInProgressCopyWith<$Res> {
  factory $UserRateInProgressCopyWith(
          UserRateInProgress value, $Res Function(UserRateInProgress) then) =
      _$UserRateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserRateInProgressCopyWithImpl<$Res>
    extends _$UserRateStateCopyWithImpl<$Res>
    implements $UserRateInProgressCopyWith<$Res> {
  _$UserRateInProgressCopyWithImpl(
      UserRateInProgress _value, $Res Function(UserRateInProgress) _then)
      : super(_value, (v) => _then(v as UserRateInProgress));

  @override
  UserRateInProgress get _value => super._value as UserRateInProgress;
}

/// @nodoc

class _$UserRateInProgress implements UserRateInProgress {
  const _$UserRateInProgress();

  @override
  String toString() {
    return 'UserRateState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserRateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(PostRate? postRate) loadSuccess,
    required TResult Function(ExceptionBase error) loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
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
    required TResult Function(UserRateInProgress value) inProgress,
    required TResult Function(UserRateLoadSuccess value) loadSuccess,
    required TResult Function(UserRateLoadFailure value) loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class UserRateInProgress implements UserRateState {
  const factory UserRateInProgress() = _$UserRateInProgress;
}

/// @nodoc
abstract class $UserRateLoadSuccessCopyWith<$Res> {
  factory $UserRateLoadSuccessCopyWith(
          UserRateLoadSuccess value, $Res Function(UserRateLoadSuccess) then) =
      _$UserRateLoadSuccessCopyWithImpl<$Res>;
  $Res call({PostRate? postRate});
}

/// @nodoc
class _$UserRateLoadSuccessCopyWithImpl<$Res>
    extends _$UserRateStateCopyWithImpl<$Res>
    implements $UserRateLoadSuccessCopyWith<$Res> {
  _$UserRateLoadSuccessCopyWithImpl(
      UserRateLoadSuccess _value, $Res Function(UserRateLoadSuccess) _then)
      : super(_value, (v) => _then(v as UserRateLoadSuccess));

  @override
  UserRateLoadSuccess get _value => super._value as UserRateLoadSuccess;

  @override
  $Res call({
    Object? postRate = freezed,
  }) {
    return _then(UserRateLoadSuccess(
      postRate == freezed
          ? _value.postRate
          : postRate // ignore: cast_nullable_to_non_nullable
              as PostRate?,
    ));
  }
}

/// @nodoc

class _$UserRateLoadSuccess implements UserRateLoadSuccess {
  const _$UserRateLoadSuccess(this.postRate);

  @override
  final PostRate? postRate;

  @override
  String toString() {
    return 'UserRateState.loadSuccess(postRate: $postRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRateLoadSuccess &&
            const DeepCollectionEquality().equals(other.postRate, postRate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postRate));

  @JsonKey(ignore: true)
  @override
  $UserRateLoadSuccessCopyWith<UserRateLoadSuccess> get copyWith =>
      _$UserRateLoadSuccessCopyWithImpl<UserRateLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(PostRate? postRate) loadSuccess,
    required TResult Function(ExceptionBase error) loadFailure,
  }) {
    return loadSuccess(postRate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
  }) {
    return loadSuccess?.call(postRate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(postRate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateInProgress value) inProgress,
    required TResult Function(UserRateLoadSuccess value) loadSuccess,
    required TResult Function(UserRateLoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class UserRateLoadSuccess implements UserRateState {
  const factory UserRateLoadSuccess(PostRate? postRate) = _$UserRateLoadSuccess;

  PostRate? get postRate;
  @JsonKey(ignore: true)
  $UserRateLoadSuccessCopyWith<UserRateLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRateLoadFailureCopyWith<$Res> {
  factory $UserRateLoadFailureCopyWith(
          UserRateLoadFailure value, $Res Function(UserRateLoadFailure) then) =
      _$UserRateLoadFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$UserRateLoadFailureCopyWithImpl<$Res>
    extends _$UserRateStateCopyWithImpl<$Res>
    implements $UserRateLoadFailureCopyWith<$Res> {
  _$UserRateLoadFailureCopyWithImpl(
      UserRateLoadFailure _value, $Res Function(UserRateLoadFailure) _then)
      : super(_value, (v) => _then(v as UserRateLoadFailure));

  @override
  UserRateLoadFailure get _value => super._value as UserRateLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(UserRateLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$UserRateLoadFailure implements UserRateLoadFailure {
  const _$UserRateLoadFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'UserRateState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRateLoadFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $UserRateLoadFailureCopyWith<UserRateLoadFailure> get copyWith =>
      _$UserRateLoadFailureCopyWithImpl<UserRateLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(PostRate? postRate) loadSuccess,
    required TResult Function(ExceptionBase error) loadFailure,
  }) {
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
  }) {
    return loadFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(PostRate? postRate)? loadSuccess,
    TResult Function(ExceptionBase error)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserRateInProgress value) inProgress,
    required TResult Function(UserRateLoadSuccess value) loadSuccess,
    required TResult Function(UserRateLoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserRateInProgress value)? inProgress,
    TResult Function(UserRateLoadSuccess value)? loadSuccess,
    TResult Function(UserRateLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class UserRateLoadFailure implements UserRateState {
  const factory UserRateLoadFailure(ExceptionBase error) =
      _$UserRateLoadFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $UserRateLoadFailureCopyWith<UserRateLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
