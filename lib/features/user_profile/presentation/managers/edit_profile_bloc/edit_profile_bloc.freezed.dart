// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

  EditProfileEdited edited(User editedProfile, ParseFile? oldProfileImage) {
    return EditProfileEdited(
      editedProfile,
      oldProfileImage,
    );
  }
}

/// @nodoc
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  User get editedProfile => throw _privateConstructorUsedError;
  ParseFile? get oldProfileImage => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User editedProfile, ParseFile? oldProfileImage)
        edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User editedProfile, ParseFile? oldProfileImage)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User editedProfile, ParseFile? oldProfileImage)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEdited value) edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileEdited value)? edited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEdited value)? edited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileEventCopyWith<EditProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
  $Res call({User editedProfile, ParseFile? oldProfileImage});
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;

  @override
  $Res call({
    Object? editedProfile = freezed,
    Object? oldProfileImage = freezed,
  }) {
    return _then(_value.copyWith(
      editedProfile: editedProfile == freezed
          ? _value.editedProfile
          : editedProfile // ignore: cast_nullable_to_non_nullable
              as User,
      oldProfileImage: oldProfileImage == freezed
          ? _value.oldProfileImage
          : oldProfileImage // ignore: cast_nullable_to_non_nullable
              as ParseFile?,
    ));
  }
}

/// @nodoc
abstract class $EditProfileEditedCopyWith<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEditedCopyWith(
          EditProfileEdited value, $Res Function(EditProfileEdited) then) =
      _$EditProfileEditedCopyWithImpl<$Res>;
  @override
  $Res call({User editedProfile, ParseFile? oldProfileImage});
}

/// @nodoc
class _$EditProfileEditedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEditedCopyWith<$Res> {
  _$EditProfileEditedCopyWithImpl(
      EditProfileEdited _value, $Res Function(EditProfileEdited) _then)
      : super(_value, (v) => _then(v as EditProfileEdited));

  @override
  EditProfileEdited get _value => super._value as EditProfileEdited;

  @override
  $Res call({
    Object? editedProfile = freezed,
    Object? oldProfileImage = freezed,
  }) {
    return _then(EditProfileEdited(
      editedProfile == freezed
          ? _value.editedProfile
          : editedProfile // ignore: cast_nullable_to_non_nullable
              as User,
      oldProfileImage == freezed
          ? _value.oldProfileImage
          : oldProfileImage // ignore: cast_nullable_to_non_nullable
              as ParseFile?,
    ));
  }
}

/// @nodoc

class _$EditProfileEdited implements EditProfileEdited {
  const _$EditProfileEdited(this.editedProfile, this.oldProfileImage);

  @override
  final User editedProfile;
  @override
  final ParseFile? oldProfileImage;

  @override
  String toString() {
    return 'EditProfileEvent.edited(editedProfile: $editedProfile, oldProfileImage: $oldProfileImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileEdited &&
            const DeepCollectionEquality()
                .equals(other.editedProfile, editedProfile) &&
            const DeepCollectionEquality()
                .equals(other.oldProfileImage, oldProfileImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(editedProfile),
      const DeepCollectionEquality().hash(oldProfileImage));

  @JsonKey(ignore: true)
  @override
  $EditProfileEditedCopyWith<EditProfileEdited> get copyWith =>
      _$EditProfileEditedCopyWithImpl<EditProfileEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User editedProfile, ParseFile? oldProfileImage)
        edited,
  }) {
    return edited(editedProfile, oldProfileImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User editedProfile, ParseFile? oldProfileImage)? edited,
  }) {
    return edited?.call(editedProfile, oldProfileImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User editedProfile, ParseFile? oldProfileImage)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(editedProfile, oldProfileImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEdited value) edited,
  }) {
    return edited(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileEdited value)? edited,
  }) {
    return edited?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEdited value)? edited,
    required TResult orElse(),
  }) {
    if (edited != null) {
      return edited(this);
    }
    return orElse();
  }
}

abstract class EditProfileEdited implements EditProfileEvent {
  const factory EditProfileEdited(
      User editedProfile, ParseFile? oldProfileImage) = _$EditProfileEdited;

  @override
  User get editedProfile;
  @override
  ParseFile? get oldProfileImage;
  @override
  @JsonKey(ignore: true)
  $EditProfileEditedCopyWith<EditProfileEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  EditProfileInitial initial() {
    return const EditProfileInitial();
  }

  EditProfileInProgress inProgress() {
    return const EditProfileInProgress();
  }

  EditProfileEditSuccuss editSuccuss() {
    return const EditProfileEditSuccuss();
  }

  EditProfileEditFailure editFailure(ExceptionBase error) {
    return EditProfileEditFailure(
      error,
    );
  }
}

/// @nodoc
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() editSuccuss,
    required TResult Function(ExceptionBase error) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileInProgress value) inProgress,
    required TResult Function(EditProfileEditSuccuss value) editSuccuss,
    required TResult Function(EditProfileEditFailure value) editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;
}

/// @nodoc
abstract class $EditProfileInitialCopyWith<$Res> {
  factory $EditProfileInitialCopyWith(
          EditProfileInitial value, $Res Function(EditProfileInitial) then) =
      _$EditProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileInitialCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileInitialCopyWith<$Res> {
  _$EditProfileInitialCopyWithImpl(
      EditProfileInitial _value, $Res Function(EditProfileInitial) _then)
      : super(_value, (v) => _then(v as EditProfileInitial));

  @override
  EditProfileInitial get _value => super._value as EditProfileInitial;
}

/// @nodoc

class _$EditProfileInitial implements EditProfileInitial {
  const _$EditProfileInitial();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() editSuccuss,
    required TResult Function(ExceptionBase error) editFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileInProgress value) inProgress,
    required TResult Function(EditProfileEditSuccuss value) editSuccuss,
    required TResult Function(EditProfileEditFailure value) editFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditProfileInitial implements EditProfileState {
  const factory EditProfileInitial() = _$EditProfileInitial;
}

/// @nodoc
abstract class $EditProfileInProgressCopyWith<$Res> {
  factory $EditProfileInProgressCopyWith(EditProfileInProgress value,
          $Res Function(EditProfileInProgress) then) =
      _$EditProfileInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileInProgressCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileInProgressCopyWith<$Res> {
  _$EditProfileInProgressCopyWithImpl(
      EditProfileInProgress _value, $Res Function(EditProfileInProgress) _then)
      : super(_value, (v) => _then(v as EditProfileInProgress));

  @override
  EditProfileInProgress get _value => super._value as EditProfileInProgress;
}

/// @nodoc

class _$EditProfileInProgress implements EditProfileInProgress {
  const _$EditProfileInProgress();

  @override
  String toString() {
    return 'EditProfileState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() editSuccuss,
    required TResult Function(ExceptionBase error) editFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileInProgress value) inProgress,
    required TResult Function(EditProfileEditSuccuss value) editSuccuss,
    required TResult Function(EditProfileEditFailure value) editFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class EditProfileInProgress implements EditProfileState {
  const factory EditProfileInProgress() = _$EditProfileInProgress;
}

/// @nodoc
abstract class $EditProfileEditSuccussCopyWith<$Res> {
  factory $EditProfileEditSuccussCopyWith(EditProfileEditSuccuss value,
          $Res Function(EditProfileEditSuccuss) then) =
      _$EditProfileEditSuccussCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEditSuccussCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileEditSuccussCopyWith<$Res> {
  _$EditProfileEditSuccussCopyWithImpl(EditProfileEditSuccuss _value,
      $Res Function(EditProfileEditSuccuss) _then)
      : super(_value, (v) => _then(v as EditProfileEditSuccuss));

  @override
  EditProfileEditSuccuss get _value => super._value as EditProfileEditSuccuss;
}

/// @nodoc

class _$EditProfileEditSuccuss implements EditProfileEditSuccuss {
  const _$EditProfileEditSuccuss();

  @override
  String toString() {
    return 'EditProfileState.editSuccuss()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EditProfileEditSuccuss);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() editSuccuss,
    required TResult Function(ExceptionBase error) editFailure,
  }) {
    return editSuccuss();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
  }) {
    return editSuccuss?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileInProgress value) inProgress,
    required TResult Function(EditProfileEditSuccuss value) editSuccuss,
    required TResult Function(EditProfileEditFailure value) editFailure,
  }) {
    return editSuccuss(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
  }) {
    return editSuccuss?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editSuccuss != null) {
      return editSuccuss(this);
    }
    return orElse();
  }
}

abstract class EditProfileEditSuccuss implements EditProfileState {
  const factory EditProfileEditSuccuss() = _$EditProfileEditSuccuss;
}

/// @nodoc
abstract class $EditProfileEditFailureCopyWith<$Res> {
  factory $EditProfileEditFailureCopyWith(EditProfileEditFailure value,
          $Res Function(EditProfileEditFailure) then) =
      _$EditProfileEditFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase error});
}

/// @nodoc
class _$EditProfileEditFailureCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileEditFailureCopyWith<$Res> {
  _$EditProfileEditFailureCopyWithImpl(EditProfileEditFailure _value,
      $Res Function(EditProfileEditFailure) _then)
      : super(_value, (v) => _then(v as EditProfileEditFailure));

  @override
  EditProfileEditFailure get _value => super._value as EditProfileEditFailure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(EditProfileEditFailure(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$EditProfileEditFailure implements EditProfileEditFailure {
  const _$EditProfileEditFailure(this.error);

  @override
  final ExceptionBase error;

  @override
  String toString() {
    return 'EditProfileState.editFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditProfileEditFailure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $EditProfileEditFailureCopyWith<EditProfileEditFailure> get copyWith =>
      _$EditProfileEditFailureCopyWithImpl<EditProfileEditFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function() editSuccuss,
    required TResult Function(ExceptionBase error) editFailure,
  }) {
    return editFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
  }) {
    return editFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function()? editSuccuss,
    TResult Function(ExceptionBase error)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileInProgress value) inProgress,
    required TResult Function(EditProfileEditSuccuss value) editSuccuss,
    required TResult Function(EditProfileEditFailure value) editFailure,
  }) {
    return editFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
  }) {
    return editFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileInProgress value)? inProgress,
    TResult Function(EditProfileEditSuccuss value)? editSuccuss,
    TResult Function(EditProfileEditFailure value)? editFailure,
    required TResult orElse(),
  }) {
    if (editFailure != null) {
      return editFailure(this);
    }
    return orElse();
  }
}

abstract class EditProfileEditFailure implements EditProfileState {
  const factory EditProfileEditFailure(ExceptionBase error) =
      _$EditProfileEditFailure;

  ExceptionBase get error;
  @JsonKey(ignore: true)
  $EditProfileEditFailureCopyWith<EditProfileEditFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
