// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReportEventTearOff {
  const _$ReportEventTearOff();

  ReportPostReported postReported(PostReport postReport) {
    return ReportPostReported(
      postReport,
    );
  }
}

/// @nodoc
const $ReportEvent = _$ReportEventTearOff();

/// @nodoc
mixin _$ReportEvent {
  PostReport get postReport => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostReport postReport) postReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PostReport postReport)? postReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostReport postReport)? postReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportPostReported value) postReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportPostReported value)? postReported,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportPostReported value)? postReported,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportEventCopyWith<ReportEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
  $Res call({PostReport postReport});
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;

  @override
  $Res call({
    Object? postReport = freezed,
  }) {
    return _then(_value.copyWith(
      postReport: postReport == freezed
          ? _value.postReport
          : postReport // ignore: cast_nullable_to_non_nullable
              as PostReport,
    ));
  }
}

/// @nodoc
abstract class $ReportPostReportedCopyWith<$Res>
    implements $ReportEventCopyWith<$Res> {
  factory $ReportPostReportedCopyWith(
          ReportPostReported value, $Res Function(ReportPostReported) then) =
      _$ReportPostReportedCopyWithImpl<$Res>;
  @override
  $Res call({PostReport postReport});
}

/// @nodoc
class _$ReportPostReportedCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
    implements $ReportPostReportedCopyWith<$Res> {
  _$ReportPostReportedCopyWithImpl(
      ReportPostReported _value, $Res Function(ReportPostReported) _then)
      : super(_value, (v) => _then(v as ReportPostReported));

  @override
  ReportPostReported get _value => super._value as ReportPostReported;

  @override
  $Res call({
    Object? postReport = freezed,
  }) {
    return _then(ReportPostReported(
      postReport == freezed
          ? _value.postReport
          : postReport // ignore: cast_nullable_to_non_nullable
              as PostReport,
    ));
  }
}

/// @nodoc

class _$ReportPostReported implements ReportPostReported {
  const _$ReportPostReported(this.postReport);

  @override
  final PostReport postReport;

  @override
  String toString() {
    return 'ReportEvent.postReported(postReport: $postReport)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportPostReported &&
            const DeepCollectionEquality()
                .equals(other.postReport, postReport));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(postReport));

  @JsonKey(ignore: true)
  @override
  $ReportPostReportedCopyWith<ReportPostReported> get copyWith =>
      _$ReportPostReportedCopyWithImpl<ReportPostReported>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostReport postReport) postReported,
  }) {
    return postReported(postReport);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PostReport postReport)? postReported,
  }) {
    return postReported?.call(postReport);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostReport postReport)? postReported,
    required TResult orElse(),
  }) {
    if (postReported != null) {
      return postReported(postReport);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportPostReported value) postReported,
  }) {
    return postReported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportPostReported value)? postReported,
  }) {
    return postReported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportPostReported value)? postReported,
    required TResult orElse(),
  }) {
    if (postReported != null) {
      return postReported(this);
    }
    return orElse();
  }
}

abstract class ReportPostReported implements ReportEvent {
  const factory ReportPostReported(PostReport postReport) =
      _$ReportPostReported;

  @override
  PostReport get postReport;
  @override
  @JsonKey(ignore: true)
  $ReportPostReportedCopyWith<ReportPostReported> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReportStateTearOff {
  const _$ReportStateTearOff();

  ReportInitial initial() {
    return const ReportInitial();
  }

  ReportInProgress inProgress() {
    return const ReportInProgress();
  }

  ReportSuccuss succuss() {
    return const ReportSuccuss();
  }

  ReportFailure failure(ServerException error) {
    return ReportFailure(
      error,
    );
  }
}

/// @nodoc
const $ReportState = _$ReportStateTearOff();

/// @nodoc
mixin _$ReportState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() succuss,
    required TResult Function(ServerException error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportInProgress value) inProgress,
    required TResult Function(ReportSuccuss value) succuss,
    required TResult Function(ReportFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;
}

/// @nodoc
abstract class $ReportInitialCopyWith<$Res> {
  factory $ReportInitialCopyWith(
          ReportInitial value, $Res Function(ReportInitial) then) =
      _$ReportInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportInitialCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements $ReportInitialCopyWith<$Res> {
  _$ReportInitialCopyWithImpl(
      ReportInitial _value, $Res Function(ReportInitial) _then)
      : super(_value, (v) => _then(v as ReportInitial));

  @override
  ReportInitial get _value => super._value as ReportInitial;
}

/// @nodoc

class _$ReportInitial implements ReportInitial {
  const _$ReportInitial();

  @override
  String toString() {
    return 'ReportState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() succuss,
    required TResult Function(ServerException error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
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
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportInProgress value) inProgress,
    required TResult Function(ReportSuccuss value) succuss,
    required TResult Function(ReportFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReportInitial implements ReportState {
  const factory ReportInitial() = _$ReportInitial;
}

/// @nodoc
abstract class $ReportInProgressCopyWith<$Res> {
  factory $ReportInProgressCopyWith(
          ReportInProgress value, $Res Function(ReportInProgress) then) =
      _$ReportInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportInProgressCopyWithImpl<$Res>
    extends _$ReportStateCopyWithImpl<$Res>
    implements $ReportInProgressCopyWith<$Res> {
  _$ReportInProgressCopyWithImpl(
      ReportInProgress _value, $Res Function(ReportInProgress) _then)
      : super(_value, (v) => _then(v as ReportInProgress));

  @override
  ReportInProgress get _value => super._value as ReportInProgress;
}

/// @nodoc

class _$ReportInProgress implements ReportInProgress {
  const _$ReportInProgress();

  @override
  String toString() {
    return 'ReportState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() succuss,
    required TResult Function(ServerException error) failure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
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
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportInProgress value) inProgress,
    required TResult Function(ReportSuccuss value) succuss,
    required TResult Function(ReportFailure value) failure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class ReportInProgress implements ReportState {
  const factory ReportInProgress() = _$ReportInProgress;
}

/// @nodoc
abstract class $ReportSuccussCopyWith<$Res> {
  factory $ReportSuccussCopyWith(
          ReportSuccuss value, $Res Function(ReportSuccuss) then) =
      _$ReportSuccussCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportSuccussCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements $ReportSuccussCopyWith<$Res> {
  _$ReportSuccussCopyWithImpl(
      ReportSuccuss _value, $Res Function(ReportSuccuss) _then)
      : super(_value, (v) => _then(v as ReportSuccuss));

  @override
  ReportSuccuss get _value => super._value as ReportSuccuss;
}

/// @nodoc

class _$ReportSuccuss implements ReportSuccuss {
  const _$ReportSuccuss();

  @override
  String toString() {
    return 'ReportState.succuss()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReportSuccuss);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() succuss,
    required TResult Function(ServerException error) failure,
  }) {
    return succuss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
  }) {
    return succuss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
    required TResult orElse(),
  }) {
    if (succuss != null) {
      return succuss();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportInProgress value) inProgress,
    required TResult Function(ReportSuccuss value) succuss,
    required TResult Function(ReportFailure value) failure,
  }) {
    return succuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
  }) {
    return succuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (succuss != null) {
      return succuss(this);
    }
    return orElse();
  }
}

abstract class ReportSuccuss implements ReportState {
  const factory ReportSuccuss() = _$ReportSuccuss;
}

/// @nodoc
abstract class $ReportFailureCopyWith<$Res> {
  factory $ReportFailureCopyWith(
          ReportFailure value, $Res Function(ReportFailure) then) =
      _$ReportFailureCopyWithImpl<$Res>;
  $Res call({ServerException error});
}

/// @nodoc
class _$ReportFailureCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements $ReportFailureCopyWith<$Res> {
  _$ReportFailureCopyWithImpl(
      ReportFailure _value, $Res Function(ReportFailure) _then)
      : super(_value, (v) => _then(v as ReportFailure));

  @override
  ReportFailure get _value => super._value as ReportFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(ReportFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$ReportFailure implements ReportFailure {
  const _$ReportFailure(this.error);

  @override
  final ServerException error;

  @override
  String toString() {
    return 'ReportState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ReportFailureCopyWith<ReportFailure> get copyWith =>
      _$ReportFailureCopyWithImpl<ReportFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() succuss,
    required TResult Function(ServerException error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? succuss,
    TResult Function(ServerException error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReportInitial value) initial,
    required TResult Function(ReportInProgress value) inProgress,
    required TResult Function(ReportSuccuss value) succuss,
    required TResult Function(ReportFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReportInitial value)? initial,
    TResult Function(ReportInProgress value)? inProgress,
    TResult Function(ReportSuccuss value)? succuss,
    TResult Function(ReportFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ReportFailure implements ReportState {
  const factory ReportFailure(ServerException error) = _$ReportFailure;

  ServerException get error;
  @JsonKey(ignore: true)
  $ReportFailureCopyWith<ReportFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
