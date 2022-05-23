// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_job_application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SendJobApplicationEventTearOff {
  const _$SendJobApplicationEventTearOff();

  SendJobApplicationJobApplicationSended jobApplicationSended(
      JobApplication jobApplication) {
    return SendJobApplicationJobApplicationSended(
      jobApplication,
    );
  }
}

/// @nodoc
const $SendJobApplicationEvent = _$SendJobApplicationEventTearOff();

/// @nodoc
mixin _$SendJobApplicationEvent {
  JobApplication get jobApplication => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobApplication jobApplication)
        jobApplicationSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JobApplication jobApplication)? jobApplicationSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobApplication jobApplication)? jobApplicationSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendJobApplicationJobApplicationSended value)
        jobApplicationSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationJobApplicationSended value)?
        jobApplicationSended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationJobApplicationSended value)?
        jobApplicationSended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SendJobApplicationEventCopyWith<SendJobApplicationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendJobApplicationEventCopyWith<$Res> {
  factory $SendJobApplicationEventCopyWith(SendJobApplicationEvent value,
          $Res Function(SendJobApplicationEvent) then) =
      _$SendJobApplicationEventCopyWithImpl<$Res>;
  $Res call({JobApplication jobApplication});
}

/// @nodoc
class _$SendJobApplicationEventCopyWithImpl<$Res>
    implements $SendJobApplicationEventCopyWith<$Res> {
  _$SendJobApplicationEventCopyWithImpl(this._value, this._then);

  final SendJobApplicationEvent _value;
  // ignore: unused_field
  final $Res Function(SendJobApplicationEvent) _then;

  @override
  $Res call({
    Object? jobApplication = freezed,
  }) {
    return _then(_value.copyWith(
      jobApplication: jobApplication == freezed
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }
}

/// @nodoc
abstract class $SendJobApplicationJobApplicationSendedCopyWith<$Res>
    implements $SendJobApplicationEventCopyWith<$Res> {
  factory $SendJobApplicationJobApplicationSendedCopyWith(
          SendJobApplicationJobApplicationSended value,
          $Res Function(SendJobApplicationJobApplicationSended) then) =
      _$SendJobApplicationJobApplicationSendedCopyWithImpl<$Res>;
  @override
  $Res call({JobApplication jobApplication});
}

/// @nodoc
class _$SendJobApplicationJobApplicationSendedCopyWithImpl<$Res>
    extends _$SendJobApplicationEventCopyWithImpl<$Res>
    implements $SendJobApplicationJobApplicationSendedCopyWith<$Res> {
  _$SendJobApplicationJobApplicationSendedCopyWithImpl(
      SendJobApplicationJobApplicationSended _value,
      $Res Function(SendJobApplicationJobApplicationSended) _then)
      : super(
            _value, (v) => _then(v as SendJobApplicationJobApplicationSended));

  @override
  SendJobApplicationJobApplicationSended get _value =>
      super._value as SendJobApplicationJobApplicationSended;

  @override
  $Res call({
    Object? jobApplication = freezed,
  }) {
    return _then(SendJobApplicationJobApplicationSended(
      jobApplication == freezed
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }
}

/// @nodoc

class _$SendJobApplicationJobApplicationSended
    implements SendJobApplicationJobApplicationSended {
  const _$SendJobApplicationJobApplicationSended(this.jobApplication);

  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'SendJobApplicationEvent.jobApplicationSended(jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendJobApplicationJobApplicationSended &&
            const DeepCollectionEquality()
                .equals(other.jobApplication, jobApplication));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(jobApplication));

  @JsonKey(ignore: true)
  @override
  $SendJobApplicationJobApplicationSendedCopyWith<
          SendJobApplicationJobApplicationSended>
      get copyWith => _$SendJobApplicationJobApplicationSendedCopyWithImpl<
          SendJobApplicationJobApplicationSended>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JobApplication jobApplication)
        jobApplicationSended,
  }) {
    return jobApplicationSended(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(JobApplication jobApplication)? jobApplicationSended,
  }) {
    return jobApplicationSended?.call(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JobApplication jobApplication)? jobApplicationSended,
    required TResult orElse(),
  }) {
    if (jobApplicationSended != null) {
      return jobApplicationSended(jobApplication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendJobApplicationJobApplicationSended value)
        jobApplicationSended,
  }) {
    return jobApplicationSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationJobApplicationSended value)?
        jobApplicationSended,
  }) {
    return jobApplicationSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationJobApplicationSended value)?
        jobApplicationSended,
    required TResult orElse(),
  }) {
    if (jobApplicationSended != null) {
      return jobApplicationSended(this);
    }
    return orElse();
  }
}

abstract class SendJobApplicationJobApplicationSended
    implements SendJobApplicationEvent {
  const factory SendJobApplicationJobApplicationSended(
      JobApplication jobApplication) = _$SendJobApplicationJobApplicationSended;

  @override
  JobApplication get jobApplication;
  @override
  @JsonKey(ignore: true)
  $SendJobApplicationJobApplicationSendedCopyWith<
          SendJobApplicationJobApplicationSended>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SendJobApplicationStateTearOff {
  const _$SendJobApplicationStateTearOff();

  SendJobApplicationInitial initial() {
    return const SendJobApplicationInitial();
  }

  SendJobApplicationInProgress inProgress() {
    return const SendJobApplicationInProgress();
  }

  SendJobApplicationSendSuccess sendSuccess(JobApplication jobApplication) {
    return SendJobApplicationSendSuccess(
      jobApplication,
    );
  }

  SendJobApplicationSendFailure sendFailure(ExceptionBase error) {
    return SendJobApplicationSendFailure(
      error,
    );
  }
}

/// @nodoc
const $SendJobApplicationState = _$SendJobApplicationStateTearOff();

/// @nodoc
mixin _$SendJobApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(JobApplication jobApplication) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendJobApplicationInitial value) initial,
    required TResult Function(SendJobApplicationInProgress value) inProgress,
    required TResult Function(SendJobApplicationSendSuccess value) sendSuccess,
    required TResult Function(SendJobApplicationSendFailure value) sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendJobApplicationStateCopyWith<$Res> {
  factory $SendJobApplicationStateCopyWith(SendJobApplicationState value,
          $Res Function(SendJobApplicationState) then) =
      _$SendJobApplicationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendJobApplicationStateCopyWithImpl<$Res>
    implements $SendJobApplicationStateCopyWith<$Res> {
  _$SendJobApplicationStateCopyWithImpl(this._value, this._then);

  final SendJobApplicationState _value;
  // ignore: unused_field
  final $Res Function(SendJobApplicationState) _then;
}

/// @nodoc
abstract class $SendJobApplicationInitialCopyWith<$Res> {
  factory $SendJobApplicationInitialCopyWith(SendJobApplicationInitial value,
          $Res Function(SendJobApplicationInitial) then) =
      _$SendJobApplicationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendJobApplicationInitialCopyWithImpl<$Res>
    extends _$SendJobApplicationStateCopyWithImpl<$Res>
    implements $SendJobApplicationInitialCopyWith<$Res> {
  _$SendJobApplicationInitialCopyWithImpl(SendJobApplicationInitial _value,
      $Res Function(SendJobApplicationInitial) _then)
      : super(_value, (v) => _then(v as SendJobApplicationInitial));

  @override
  SendJobApplicationInitial get _value =>
      super._value as SendJobApplicationInitial;
}

/// @nodoc

class _$SendJobApplicationInitial implements SendJobApplicationInitial {
  const _$SendJobApplicationInitial();

  @override
  String toString() {
    return 'SendJobApplicationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendJobApplicationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(JobApplication jobApplication) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
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
    required TResult Function(SendJobApplicationInitial value) initial,
    required TResult Function(SendJobApplicationInProgress value) inProgress,
    required TResult Function(SendJobApplicationSendSuccess value) sendSuccess,
    required TResult Function(SendJobApplicationSendFailure value) sendFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SendJobApplicationInitial implements SendJobApplicationState {
  const factory SendJobApplicationInitial() = _$SendJobApplicationInitial;
}

/// @nodoc
abstract class $SendJobApplicationInProgressCopyWith<$Res> {
  factory $SendJobApplicationInProgressCopyWith(
          SendJobApplicationInProgress value,
          $Res Function(SendJobApplicationInProgress) then) =
      _$SendJobApplicationInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SendJobApplicationInProgressCopyWithImpl<$Res>
    extends _$SendJobApplicationStateCopyWithImpl<$Res>
    implements $SendJobApplicationInProgressCopyWith<$Res> {
  _$SendJobApplicationInProgressCopyWithImpl(
      SendJobApplicationInProgress _value,
      $Res Function(SendJobApplicationInProgress) _then)
      : super(_value, (v) => _then(v as SendJobApplicationInProgress));

  @override
  SendJobApplicationInProgress get _value =>
      super._value as SendJobApplicationInProgress;
}

/// @nodoc

class _$SendJobApplicationInProgress implements SendJobApplicationInProgress {
  const _$SendJobApplicationInProgress();

  @override
  String toString() {
    return 'SendJobApplicationState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendJobApplicationInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(JobApplication jobApplication) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
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
    required TResult Function(SendJobApplicationInitial value) initial,
    required TResult Function(SendJobApplicationInProgress value) inProgress,
    required TResult Function(SendJobApplicationSendSuccess value) sendSuccess,
    required TResult Function(SendJobApplicationSendFailure value) sendFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SendJobApplicationInProgress implements SendJobApplicationState {
  const factory SendJobApplicationInProgress() = _$SendJobApplicationInProgress;
}

/// @nodoc
abstract class $SendJobApplicationSendSuccessCopyWith<$Res> {
  factory $SendJobApplicationSendSuccessCopyWith(
          SendJobApplicationSendSuccess value,
          $Res Function(SendJobApplicationSendSuccess) then) =
      _$SendJobApplicationSendSuccessCopyWithImpl<$Res>;
  $Res call({JobApplication jobApplication});
}

/// @nodoc
class _$SendJobApplicationSendSuccessCopyWithImpl<$Res>
    extends _$SendJobApplicationStateCopyWithImpl<$Res>
    implements $SendJobApplicationSendSuccessCopyWith<$Res> {
  _$SendJobApplicationSendSuccessCopyWithImpl(
      SendJobApplicationSendSuccess _value,
      $Res Function(SendJobApplicationSendSuccess) _then)
      : super(_value, (v) => _then(v as SendJobApplicationSendSuccess));

  @override
  SendJobApplicationSendSuccess get _value =>
      super._value as SendJobApplicationSendSuccess;

  @override
  $Res call({
    Object? jobApplication = freezed,
  }) {
    return _then(SendJobApplicationSendSuccess(
      jobApplication == freezed
          ? _value.jobApplication
          : jobApplication // ignore: cast_nullable_to_non_nullable
              as JobApplication,
    ));
  }
}

/// @nodoc

class _$SendJobApplicationSendSuccess implements SendJobApplicationSendSuccess {
  const _$SendJobApplicationSendSuccess(this.jobApplication);

  @override
  final JobApplication jobApplication;

  @override
  String toString() {
    return 'SendJobApplicationState.sendSuccess(jobApplication: $jobApplication)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendJobApplicationSendSuccess &&
            const DeepCollectionEquality()
                .equals(other.jobApplication, jobApplication));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(jobApplication));

  @JsonKey(ignore: true)
  @override
  $SendJobApplicationSendSuccessCopyWith<SendJobApplicationSendSuccess>
      get copyWith => _$SendJobApplicationSendSuccessCopyWithImpl<
          SendJobApplicationSendSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(JobApplication jobApplication) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return sendSuccess(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return sendSuccess?.call(jobApplication);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(jobApplication);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendJobApplicationInitial value) initial,
    required TResult Function(SendJobApplicationInProgress value) inProgress,
    required TResult Function(SendJobApplicationSendSuccess value) sendSuccess,
    required TResult Function(SendJobApplicationSendFailure value) sendFailure,
  }) {
    return sendSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
  }) {
    return sendSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendSuccess != null) {
      return sendSuccess(this);
    }
    return orElse();
  }
}

abstract class SendJobApplicationSendSuccess
    implements SendJobApplicationState {
  const factory SendJobApplicationSendSuccess(JobApplication jobApplication) =
      _$SendJobApplicationSendSuccess;

  JobApplication get jobApplication;
  @JsonKey(ignore: true)
  $SendJobApplicationSendSuccessCopyWith<SendJobApplicationSendSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendJobApplicationSendFailureCopyWith<$Res> {
  factory $SendJobApplicationSendFailureCopyWith(
          SendJobApplicationSendFailure value,
          $Res Function(SendJobApplicationSendFailure) then) =
      _$SendJobApplicationSendFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$SendJobApplicationSendFailureCopyWithImpl<$Res>
    extends _$SendJobApplicationStateCopyWithImpl<$Res>
    implements $SendJobApplicationSendFailureCopyWith<$Res> {
  _$SendJobApplicationSendFailureCopyWithImpl(
      SendJobApplicationSendFailure _value,
      $Res Function(SendJobApplicationSendFailure) _then)
      : super(_value, (v) => _then(v as SendJobApplicationSendFailure));

  @override
  SendJobApplicationSendFailure get _value =>
      super._value as SendJobApplicationSendFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(SendJobApplicationSendFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$SendJobApplicationSendFailure implements SendJobApplicationSendFailure {
  const _$SendJobApplicationSendFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'SendJobApplicationState.sendFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SendJobApplicationSendFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $SendJobApplicationSendFailureCopyWith<SendJobApplicationSendFailure>
      get copyWith => _$SendJobApplicationSendFailureCopyWithImpl<
          SendJobApplicationSendFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(JobApplication jobApplication) sendSuccess,
    required TResult Function(ExceptionBase error) sendFailure,
  }) {
    return sendFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
  }) {
    return sendFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(JobApplication jobApplication)? sendSuccess,
    TResult Function(ExceptionBase error)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendJobApplicationInitial value) initial,
    required TResult Function(SendJobApplicationInProgress value) inProgress,
    required TResult Function(SendJobApplicationSendSuccess value) sendSuccess,
    required TResult Function(SendJobApplicationSendFailure value) sendFailure,
  }) {
    return sendFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
  }) {
    return sendFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendJobApplicationInitial value)? initial,
    TResult Function(SendJobApplicationInProgress value)? inProgress,
    TResult Function(SendJobApplicationSendSuccess value)? sendSuccess,
    TResult Function(SendJobApplicationSendFailure value)? sendFailure,
    required TResult orElse(),
  }) {
    if (sendFailure != null) {
      return sendFailure(this);
    }
    return orElse();
  }
}

abstract class SendJobApplicationSendFailure
    implements SendJobApplicationState {
  const factory SendJobApplicationSendFailure(ExceptionBase error) =
      _$SendJobApplicationSendFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $SendJobApplicationSendFailureCopyWith<SendJobApplicationSendFailure>
      get copyWith => throw _privateConstructorUsedError;
}
