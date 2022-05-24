// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'view_post_job_applications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewPostJobApplicationsEventTearOff {
  const _$ViewPostJobApplicationsEventTearOff();

  ViewPostJobApplicationsLoaded loaded(JobPost jobPost) {
    return ViewPostJobApplicationsLoaded(
      jobPost,
    );
  }

  ViewPostJobApplicationsRefreshed refreshed(JobPost jobPost) {
    return ViewPostJobApplicationsRefreshed(
      jobPost,
    );
  }
}

/// @nodoc
const $ViewPostJobApplicationsEvent = _$ViewPostJobApplicationsEventTearOff();

/// @nodoc
mixin _$ViewPostJobApplicationsEvent {
  JobPost get jobPost => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobPost jobPost) loaded,
    required TResult Function(JobPost jobPost) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewPostJobApplicationsLoaded value) loaded,
    required TResult Function(ViewPostJobApplicationsRefreshed value) refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewPostJobApplicationsEventCopyWith<ViewPostJobApplicationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPostJobApplicationsEventCopyWith<$Res> {
  factory $ViewPostJobApplicationsEventCopyWith(
          ViewPostJobApplicationsEvent value,
          $Res Function(ViewPostJobApplicationsEvent) then) =
      _$ViewPostJobApplicationsEventCopyWithImpl<$Res>;
  $Res call({JobPost jobPost});
}

/// @nodoc
class _$ViewPostJobApplicationsEventCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsEventCopyWith<$Res> {
  _$ViewPostJobApplicationsEventCopyWithImpl(this._value, this._then);

  final ViewPostJobApplicationsEvent _value;
  // ignore: unused_field
  final $Res Function(ViewPostJobApplicationsEvent) _then;

  @override
  $Res call({
    Object? jobPost = freezed,
  }) {
    return _then(_value.copyWith(
      jobPost: jobPost == freezed
          ? _value.jobPost
          : jobPost // ignore: cast_nullable_to_non_nullable
              as JobPost,
    ));
  }
}

/// @nodoc
abstract class $ViewPostJobApplicationsLoadedCopyWith<$Res>
    implements $ViewPostJobApplicationsEventCopyWith<$Res> {
  factory $ViewPostJobApplicationsLoadedCopyWith(
          ViewPostJobApplicationsLoaded value,
          $Res Function(ViewPostJobApplicationsLoaded) then) =
      _$ViewPostJobApplicationsLoadedCopyWithImpl<$Res>;
  @override
  $Res call({JobPost jobPost});
}

/// @nodoc
class _$ViewPostJobApplicationsLoadedCopyWithImpl<$Res>
    extends _$ViewPostJobApplicationsEventCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsLoadedCopyWith<$Res> {
  _$ViewPostJobApplicationsLoadedCopyWithImpl(
      ViewPostJobApplicationsLoaded _value,
      $Res Function(ViewPostJobApplicationsLoaded) _then)
      : super(_value, (v) => _then(v as ViewPostJobApplicationsLoaded));

  @override
  ViewPostJobApplicationsLoaded get _value =>
      super._value as ViewPostJobApplicationsLoaded;

  @override
  $Res call({
    Object? jobPost = freezed,
  }) {
    return _then(ViewPostJobApplicationsLoaded(
      jobPost == freezed
          ? _value.jobPost
          : jobPost // ignore: cast_nullable_to_non_nullable
              as JobPost,
    ));
  }
}

/// @nodoc

class _$ViewPostJobApplicationsLoaded implements ViewPostJobApplicationsLoaded {
  const _$ViewPostJobApplicationsLoaded(this.jobPost);

  @override
  final JobPost jobPost;

  @override
  String toString() {
    return 'ViewPostJobApplicationsEvent.loaded(jobPost: $jobPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewPostJobApplicationsLoaded &&
            const DeepCollectionEquality().equals(other.jobPost, jobPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(jobPost));

  @JsonKey(ignore: true)
  @override
  $ViewPostJobApplicationsLoadedCopyWith<ViewPostJobApplicationsLoaded>
      get copyWith => _$ViewPostJobApplicationsLoadedCopyWithImpl<
          ViewPostJobApplicationsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobPost jobPost) loaded,
    required TResult Function(JobPost jobPost) refreshed,
  }) {
    return loaded(jobPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
  }) {
    return loaded?.call(jobPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(jobPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewPostJobApplicationsLoaded value) loaded,
    required TResult Function(ViewPostJobApplicationsRefreshed value) refreshed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ViewPostJobApplicationsLoaded
    implements ViewPostJobApplicationsEvent {
  const factory ViewPostJobApplicationsLoaded(JobPost jobPost) =
      _$ViewPostJobApplicationsLoaded;

  @override
  JobPost get jobPost;
  @override
  @JsonKey(ignore: true)
  $ViewPostJobApplicationsLoadedCopyWith<ViewPostJobApplicationsLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPostJobApplicationsRefreshedCopyWith<$Res>
    implements $ViewPostJobApplicationsEventCopyWith<$Res> {
  factory $ViewPostJobApplicationsRefreshedCopyWith(
          ViewPostJobApplicationsRefreshed value,
          $Res Function(ViewPostJobApplicationsRefreshed) then) =
      _$ViewPostJobApplicationsRefreshedCopyWithImpl<$Res>;
  @override
  $Res call({JobPost jobPost});
}

/// @nodoc
class _$ViewPostJobApplicationsRefreshedCopyWithImpl<$Res>
    extends _$ViewPostJobApplicationsEventCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsRefreshedCopyWith<$Res> {
  _$ViewPostJobApplicationsRefreshedCopyWithImpl(
      ViewPostJobApplicationsRefreshed _value,
      $Res Function(ViewPostJobApplicationsRefreshed) _then)
      : super(_value, (v) => _then(v as ViewPostJobApplicationsRefreshed));

  @override
  ViewPostJobApplicationsRefreshed get _value =>
      super._value as ViewPostJobApplicationsRefreshed;

  @override
  $Res call({
    Object? jobPost = freezed,
  }) {
    return _then(ViewPostJobApplicationsRefreshed(
      jobPost == freezed
          ? _value.jobPost
          : jobPost // ignore: cast_nullable_to_non_nullable
              as JobPost,
    ));
  }
}

/// @nodoc

class _$ViewPostJobApplicationsRefreshed
    implements ViewPostJobApplicationsRefreshed {
  const _$ViewPostJobApplicationsRefreshed(this.jobPost);

  @override
  final JobPost jobPost;

  @override
  String toString() {
    return 'ViewPostJobApplicationsEvent.refreshed(jobPost: $jobPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewPostJobApplicationsRefreshed &&
            const DeepCollectionEquality().equals(other.jobPost, jobPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(jobPost));

  @JsonKey(ignore: true)
  @override
  $ViewPostJobApplicationsRefreshedCopyWith<ViewPostJobApplicationsRefreshed>
      get copyWith => _$ViewPostJobApplicationsRefreshedCopyWithImpl<
          ViewPostJobApplicationsRefreshed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobPost jobPost) loaded,
    required TResult Function(JobPost jobPost) refreshed,
  }) {
    return refreshed(jobPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
  }) {
    return refreshed?.call(jobPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobPost jobPost)? loaded,
    TResult Function(JobPost jobPost)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(jobPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewPostJobApplicationsLoaded value) loaded,
    required TResult Function(ViewPostJobApplicationsRefreshed value) refreshed,
  }) {
    return refreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
  }) {
    return refreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsLoaded value)? loaded,
    TResult Function(ViewPostJobApplicationsRefreshed value)? refreshed,
    required TResult orElse(),
  }) {
    if (refreshed != null) {
      return refreshed(this);
    }
    return orElse();
  }
}

abstract class ViewPostJobApplicationsRefreshed
    implements ViewPostJobApplicationsEvent {
  const factory ViewPostJobApplicationsRefreshed(JobPost jobPost) =
      _$ViewPostJobApplicationsRefreshed;

  @override
  JobPost get jobPost;
  @override
  @JsonKey(ignore: true)
  $ViewPostJobApplicationsRefreshedCopyWith<ViewPostJobApplicationsRefreshed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewPostJobApplicationsStateTearOff {
  const _$ViewPostJobApplicationsStateTearOff();

  ViewPostJobApplicationsInProgress inProgress() {
    return const ViewPostJobApplicationsInProgress();
  }

  ViewPostJobApplicationsLoadSuccess loadSuccess(
      UnmodifiableListView<JobApplication> jobApplications) {
    return ViewPostJobApplicationsLoadSuccess(
      jobApplications,
    );
  }

  ViewPostJobApplicationsLoadFailure loadFailure(ExceptionBase error,
      UnmodifiableListView<JobApplication> cachedUserPosts) {
    return ViewPostJobApplicationsLoadFailure(
      error,
      cachedUserPosts,
    );
  }
}

/// @nodoc
const $ViewPostJobApplicationsState = _$ViewPostJobApplicationsStateTearOff();

/// @nodoc
mixin _$ViewPostJobApplicationsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<JobApplication> jobApplications)
        loadSuccess,
    required TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewPostJobApplicationsInProgress value)
        inProgress,
    required TResult Function(ViewPostJobApplicationsLoadSuccess value)
        loadSuccess,
    required TResult Function(ViewPostJobApplicationsLoadFailure value)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPostJobApplicationsStateCopyWith<$Res> {
  factory $ViewPostJobApplicationsStateCopyWith(
          ViewPostJobApplicationsState value,
          $Res Function(ViewPostJobApplicationsState) then) =
      _$ViewPostJobApplicationsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewPostJobApplicationsStateCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsStateCopyWith<$Res> {
  _$ViewPostJobApplicationsStateCopyWithImpl(this._value, this._then);

  final ViewPostJobApplicationsState _value;
  // ignore: unused_field
  final $Res Function(ViewPostJobApplicationsState) _then;
}

/// @nodoc
abstract class $ViewPostJobApplicationsInProgressCopyWith<$Res> {
  factory $ViewPostJobApplicationsInProgressCopyWith(
          ViewPostJobApplicationsInProgress value,
          $Res Function(ViewPostJobApplicationsInProgress) then) =
      _$ViewPostJobApplicationsInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewPostJobApplicationsInProgressCopyWithImpl<$Res>
    extends _$ViewPostJobApplicationsStateCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsInProgressCopyWith<$Res> {
  _$ViewPostJobApplicationsInProgressCopyWithImpl(
      ViewPostJobApplicationsInProgress _value,
      $Res Function(ViewPostJobApplicationsInProgress) _then)
      : super(_value, (v) => _then(v as ViewPostJobApplicationsInProgress));

  @override
  ViewPostJobApplicationsInProgress get _value =>
      super._value as ViewPostJobApplicationsInProgress;
}

/// @nodoc

class _$ViewPostJobApplicationsInProgress
    implements ViewPostJobApplicationsInProgress {
  const _$ViewPostJobApplicationsInProgress();

  @override
  String toString() {
    return 'ViewPostJobApplicationsState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewPostJobApplicationsInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<JobApplication> jobApplications)
        loadSuccess,
    required TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)
        loadFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
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
    required TResult Function(ViewPostJobApplicationsInProgress value)
        inProgress,
    required TResult Function(ViewPostJobApplicationsLoadSuccess value)
        loadSuccess,
    required TResult Function(ViewPostJobApplicationsLoadFailure value)
        loadFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class ViewPostJobApplicationsInProgress
    implements ViewPostJobApplicationsState {
  const factory ViewPostJobApplicationsInProgress() =
      _$ViewPostJobApplicationsInProgress;
}

/// @nodoc
abstract class $ViewPostJobApplicationsLoadSuccessCopyWith<$Res> {
  factory $ViewPostJobApplicationsLoadSuccessCopyWith(
          ViewPostJobApplicationsLoadSuccess value,
          $Res Function(ViewPostJobApplicationsLoadSuccess) then) =
      _$ViewPostJobApplicationsLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<JobApplication> jobApplications});
}

/// @nodoc
class _$ViewPostJobApplicationsLoadSuccessCopyWithImpl<$Res>
    extends _$ViewPostJobApplicationsStateCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsLoadSuccessCopyWith<$Res> {
  _$ViewPostJobApplicationsLoadSuccessCopyWithImpl(
      ViewPostJobApplicationsLoadSuccess _value,
      $Res Function(ViewPostJobApplicationsLoadSuccess) _then)
      : super(_value, (v) => _then(v as ViewPostJobApplicationsLoadSuccess));

  @override
  ViewPostJobApplicationsLoadSuccess get _value =>
      super._value as ViewPostJobApplicationsLoadSuccess;

  @override
  $Res call({
    Object? jobApplications = freezed,
  }) {
    return _then(ViewPostJobApplicationsLoadSuccess(
      jobApplications == freezed
          ? _value.jobApplications
          : jobApplications // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<JobApplication>,
    ));
  }
}

/// @nodoc

class _$ViewPostJobApplicationsLoadSuccess
    implements ViewPostJobApplicationsLoadSuccess {
  const _$ViewPostJobApplicationsLoadSuccess(this.jobApplications);

  @override
  final UnmodifiableListView<JobApplication> jobApplications;

  @override
  String toString() {
    return 'ViewPostJobApplicationsState.loadSuccess(jobApplications: $jobApplications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewPostJobApplicationsLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.jobApplications, jobApplications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(jobApplications));

  @JsonKey(ignore: true)
  @override
  $ViewPostJobApplicationsLoadSuccessCopyWith<
          ViewPostJobApplicationsLoadSuccess>
      get copyWith => _$ViewPostJobApplicationsLoadSuccessCopyWithImpl<
          ViewPostJobApplicationsLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<JobApplication> jobApplications)
        loadSuccess,
    required TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)
        loadFailure,
  }) {
    return loadSuccess(jobApplications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
  }) {
    return loadSuccess?.call(jobApplications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(jobApplications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ViewPostJobApplicationsInProgress value)
        inProgress,
    required TResult Function(ViewPostJobApplicationsLoadSuccess value)
        loadSuccess,
    required TResult Function(ViewPostJobApplicationsLoadFailure value)
        loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ViewPostJobApplicationsLoadSuccess
    implements ViewPostJobApplicationsState {
  const factory ViewPostJobApplicationsLoadSuccess(
          UnmodifiableListView<JobApplication> jobApplications) =
      _$ViewPostJobApplicationsLoadSuccess;

  UnmodifiableListView<JobApplication> get jobApplications;
  @JsonKey(ignore: true)
  $ViewPostJobApplicationsLoadSuccessCopyWith<
          ViewPostJobApplicationsLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewPostJobApplicationsLoadFailureCopyWith<$Res> {
  factory $ViewPostJobApplicationsLoadFailureCopyWith(
          ViewPostJobApplicationsLoadFailure value,
          $Res Function(ViewPostJobApplicationsLoadFailure) then) =
      _$ViewPostJobApplicationsLoadFailureCopyWithImpl<$Res>;
  $Res call(
      {ExceptionBase error,
      UnmodifiableListView<JobApplication> cachedUserPosts});
}

/// @nodoc
class _$ViewPostJobApplicationsLoadFailureCopyWithImpl<$Res>
    extends _$ViewPostJobApplicationsStateCopyWithImpl<$Res>
    implements $ViewPostJobApplicationsLoadFailureCopyWith<$Res> {
  _$ViewPostJobApplicationsLoadFailureCopyWithImpl(
      ViewPostJobApplicationsLoadFailure _value,
      $Res Function(ViewPostJobApplicationsLoadFailure) _then)
      : super(_value, (v) => _then(v as ViewPostJobApplicationsLoadFailure));

  @override
  ViewPostJobApplicationsLoadFailure get _value =>
      super._value as ViewPostJobApplicationsLoadFailure;

  @override
  $Res call({
    Object? error = freezed,
    Object? cachedUserPosts = freezed,
  }) {
    return _then(ViewPostJobApplicationsLoadFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
      cachedUserPosts == freezed
          ? _value.cachedUserPosts
          : cachedUserPosts // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<JobApplication>,
    ));
  }
}

/// @nodoc

class _$ViewPostJobApplicationsLoadFailure
    implements ViewPostJobApplicationsLoadFailure {
  const _$ViewPostJobApplicationsLoadFailure(this.error, this.cachedUserPosts);

  @override
  final ExceptionBase error;
  @override
  final UnmodifiableListView<JobApplication> cachedUserPosts;

  @override
  String toString() {
    return 'ViewPostJobApplicationsState.loadFailure(error: $error, cachedUserPosts: $cachedUserPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ViewPostJobApplicationsLoadFailure &&
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
  $ViewPostJobApplicationsLoadFailureCopyWith<
          ViewPostJobApplicationsLoadFailure>
      get copyWith => _$ViewPostJobApplicationsLoadFailureCopyWithImpl<
          ViewPostJobApplicationsLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(
            UnmodifiableListView<JobApplication> jobApplications)
        loadSuccess,
    required TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)
        loadFailure,
  }) {
    return loadFailure(error, cachedUserPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
        loadFailure,
  }) {
    return loadFailure?.call(error, cachedUserPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<JobApplication> jobApplications)?
        loadSuccess,
    TResult Function(ExceptionBase error,
            UnmodifiableListView<JobApplication> cachedUserPosts)?
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
    required TResult Function(ViewPostJobApplicationsInProgress value)
        inProgress,
    required TResult Function(ViewPostJobApplicationsLoadSuccess value)
        loadSuccess,
    required TResult Function(ViewPostJobApplicationsLoadFailure value)
        loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ViewPostJobApplicationsInProgress value)? inProgress,
    TResult Function(ViewPostJobApplicationsLoadSuccess value)? loadSuccess,
    TResult Function(ViewPostJobApplicationsLoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class ViewPostJobApplicationsLoadFailure
    implements ViewPostJobApplicationsState {
  const factory ViewPostJobApplicationsLoadFailure(ExceptionBase error,
          UnmodifiableListView<JobApplication> cachedUserPosts) =
      _$ViewPostJobApplicationsLoadFailure;

  ExceptionBase get error;
  UnmodifiableListView<JobApplication> get cachedUserPosts;
  @JsonKey(ignore: true)
  $ViewPostJobApplicationsLoadFailureCopyWith<
          ViewPostJobApplicationsLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
