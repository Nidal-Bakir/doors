// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offered_subscription_plans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfferedSubscriptionPlansEventTearOff {
  const _$OfferedSubscriptionPlansEventTearOff();

  OfferedSubscriptionPlansLoaded loaded(AccountType plansForAccountType) {
    return OfferedSubscriptionPlansLoaded(
      plansForAccountType,
    );
  }

  OfferedSubscriptionPlansSelected selected(
      OfferedSubscriptionPlan selectedPlan) {
    return OfferedSubscriptionPlansSelected(
      selectedPlan,
    );
  }
}

/// @nodoc
const $OfferedSubscriptionPlansEvent = _$OfferedSubscriptionPlansEventTearOff();

/// @nodoc
mixin _$OfferedSubscriptionPlansEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountType plansForAccountType) loaded,
    required TResult Function(OfferedSubscriptionPlan selectedPlan) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansLoaded value) loaded,
    required TResult Function(OfferedSubscriptionPlansSelected value) selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansEventCopyWith<$Res> {
  factory $OfferedSubscriptionPlansEventCopyWith(
          OfferedSubscriptionPlansEvent value,
          $Res Function(OfferedSubscriptionPlansEvent) then) =
      _$OfferedSubscriptionPlansEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfferedSubscriptionPlansEventCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansEventCopyWith<$Res> {
  _$OfferedSubscriptionPlansEventCopyWithImpl(this._value, this._then);

  final OfferedSubscriptionPlansEvent _value;
  // ignore: unused_field
  final $Res Function(OfferedSubscriptionPlansEvent) _then;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansLoadedCopyWith<$Res> {
  factory $OfferedSubscriptionPlansLoadedCopyWith(
          OfferedSubscriptionPlansLoaded value,
          $Res Function(OfferedSubscriptionPlansLoaded) then) =
      _$OfferedSubscriptionPlansLoadedCopyWithImpl<$Res>;
  $Res call({AccountType plansForAccountType});
}

/// @nodoc
class _$OfferedSubscriptionPlansLoadedCopyWithImpl<$Res>
    extends _$OfferedSubscriptionPlansEventCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansLoadedCopyWith<$Res> {
  _$OfferedSubscriptionPlansLoadedCopyWithImpl(
      OfferedSubscriptionPlansLoaded _value,
      $Res Function(OfferedSubscriptionPlansLoaded) _then)
      : super(_value, (v) => _then(v as OfferedSubscriptionPlansLoaded));

  @override
  OfferedSubscriptionPlansLoaded get _value =>
      super._value as OfferedSubscriptionPlansLoaded;

  @override
  $Res call({
    Object? plansForAccountType = freezed,
  }) {
    return _then(OfferedSubscriptionPlansLoaded(
      plansForAccountType == freezed
          ? _value.plansForAccountType
          : plansForAccountType // ignore: cast_nullable_to_non_nullable
              as AccountType,
    ));
  }
}

/// @nodoc

class _$OfferedSubscriptionPlansLoaded
    implements OfferedSubscriptionPlansLoaded {
  const _$OfferedSubscriptionPlansLoaded(this.plansForAccountType);

  @override
  final AccountType plansForAccountType;

  @override
  String toString() {
    return 'OfferedSubscriptionPlansEvent.loaded(plansForAccountType: $plansForAccountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferedSubscriptionPlansLoaded &&
            const DeepCollectionEquality()
                .equals(other.plansForAccountType, plansForAccountType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(plansForAccountType));

  @JsonKey(ignore: true)
  @override
  $OfferedSubscriptionPlansLoadedCopyWith<OfferedSubscriptionPlansLoaded>
      get copyWith => _$OfferedSubscriptionPlansLoadedCopyWithImpl<
          OfferedSubscriptionPlansLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountType plansForAccountType) loaded,
    required TResult Function(OfferedSubscriptionPlan selectedPlan) selected,
  }) {
    return loaded(plansForAccountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
  }) {
    return loaded?.call(plansForAccountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(plansForAccountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansLoaded value) loaded,
    required TResult Function(OfferedSubscriptionPlansSelected value) selected,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class OfferedSubscriptionPlansLoaded
    implements OfferedSubscriptionPlansEvent {
  const factory OfferedSubscriptionPlansLoaded(
      AccountType plansForAccountType) = _$OfferedSubscriptionPlansLoaded;

  AccountType get plansForAccountType;
  @JsonKey(ignore: true)
  $OfferedSubscriptionPlansLoadedCopyWith<OfferedSubscriptionPlansLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansSelectedCopyWith<$Res> {
  factory $OfferedSubscriptionPlansSelectedCopyWith(
          OfferedSubscriptionPlansSelected value,
          $Res Function(OfferedSubscriptionPlansSelected) then) =
      _$OfferedSubscriptionPlansSelectedCopyWithImpl<$Res>;
  $Res call({OfferedSubscriptionPlan selectedPlan});
}

/// @nodoc
class _$OfferedSubscriptionPlansSelectedCopyWithImpl<$Res>
    extends _$OfferedSubscriptionPlansEventCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansSelectedCopyWith<$Res> {
  _$OfferedSubscriptionPlansSelectedCopyWithImpl(
      OfferedSubscriptionPlansSelected _value,
      $Res Function(OfferedSubscriptionPlansSelected) _then)
      : super(_value, (v) => _then(v as OfferedSubscriptionPlansSelected));

  @override
  OfferedSubscriptionPlansSelected get _value =>
      super._value as OfferedSubscriptionPlansSelected;

  @override
  $Res call({
    Object? selectedPlan = freezed,
  }) {
    return _then(OfferedSubscriptionPlansSelected(
      selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
    ));
  }
}

/// @nodoc

class _$OfferedSubscriptionPlansSelected
    implements OfferedSubscriptionPlansSelected {
  const _$OfferedSubscriptionPlansSelected(this.selectedPlan);

  @override
  final OfferedSubscriptionPlan selectedPlan;

  @override
  String toString() {
    return 'OfferedSubscriptionPlansEvent.selected(selectedPlan: $selectedPlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferedSubscriptionPlansSelected &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedPlan));

  @JsonKey(ignore: true)
  @override
  $OfferedSubscriptionPlansSelectedCopyWith<OfferedSubscriptionPlansSelected>
      get copyWith => _$OfferedSubscriptionPlansSelectedCopyWithImpl<
          OfferedSubscriptionPlansSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AccountType plansForAccountType) loaded,
    required TResult Function(OfferedSubscriptionPlan selectedPlan) selected,
  }) {
    return selected(selectedPlan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
  }) {
    return selected?.call(selectedPlan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AccountType plansForAccountType)? loaded,
    TResult Function(OfferedSubscriptionPlan selectedPlan)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(selectedPlan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansLoaded value) loaded,
    required TResult Function(OfferedSubscriptionPlansSelected value) selected,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansLoaded value)? loaded,
    TResult Function(OfferedSubscriptionPlansSelected value)? selected,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class OfferedSubscriptionPlansSelected
    implements OfferedSubscriptionPlansEvent {
  const factory OfferedSubscriptionPlansSelected(
          OfferedSubscriptionPlan selectedPlan) =
      _$OfferedSubscriptionPlansSelected;

  OfferedSubscriptionPlan get selectedPlan;
  @JsonKey(ignore: true)
  $OfferedSubscriptionPlansSelectedCopyWith<OfferedSubscriptionPlansSelected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$OfferedSubscriptionPlansStateTearOff {
  const _$OfferedSubscriptionPlansStateTearOff();

  OfferedSubscriptionPlansInProgress offeredSubscriptionPlansInProgress() {
    return const OfferedSubscriptionPlansInProgress();
  }

  OfferedSubscriptionPlansLoadSuccess offeredSubscriptionPlansLoadSuccess(
      List<OfferedSubscriptionPlan> plans,
      OfferedSubscriptionPlan? defaultFreeSelectedPlan,
      OfferedSubscriptionPlan selectedPlan) {
    return OfferedSubscriptionPlansLoadSuccess(
      plans,
      defaultFreeSelectedPlan,
      selectedPlan,
    );
  }

  OfferedSubscriptionPlansLoadFailure offeredSubscriptionPlansLoadFailure(
      ServerException serverException) {
    return OfferedSubscriptionPlansLoadFailure(
      serverException,
    );
  }
}

/// @nodoc
const $OfferedSubscriptionPlansState = _$OfferedSubscriptionPlansStateTearOff();

/// @nodoc
mixin _$OfferedSubscriptionPlansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offeredSubscriptionPlansInProgress,
    required TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(ServerException serverException)
        offeredSubscriptionPlansLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansInProgress value)
        offeredSubscriptionPlansInProgress,
    required TResult Function(OfferedSubscriptionPlansLoadSuccess value)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(OfferedSubscriptionPlansLoadFailure value)
        offeredSubscriptionPlansLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansStateCopyWith<$Res> {
  factory $OfferedSubscriptionPlansStateCopyWith(
          OfferedSubscriptionPlansState value,
          $Res Function(OfferedSubscriptionPlansState) then) =
      _$OfferedSubscriptionPlansStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfferedSubscriptionPlansStateCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansStateCopyWith<$Res> {
  _$OfferedSubscriptionPlansStateCopyWithImpl(this._value, this._then);

  final OfferedSubscriptionPlansState _value;
  // ignore: unused_field
  final $Res Function(OfferedSubscriptionPlansState) _then;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansInProgressCopyWith<$Res> {
  factory $OfferedSubscriptionPlansInProgressCopyWith(
          OfferedSubscriptionPlansInProgress value,
          $Res Function(OfferedSubscriptionPlansInProgress) then) =
      _$OfferedSubscriptionPlansInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfferedSubscriptionPlansInProgressCopyWithImpl<$Res>
    extends _$OfferedSubscriptionPlansStateCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansInProgressCopyWith<$Res> {
  _$OfferedSubscriptionPlansInProgressCopyWithImpl(
      OfferedSubscriptionPlansInProgress _value,
      $Res Function(OfferedSubscriptionPlansInProgress) _then)
      : super(_value, (v) => _then(v as OfferedSubscriptionPlansInProgress));

  @override
  OfferedSubscriptionPlansInProgress get _value =>
      super._value as OfferedSubscriptionPlansInProgress;
}

/// @nodoc

class _$OfferedSubscriptionPlansInProgress
    implements OfferedSubscriptionPlansInProgress {
  const _$OfferedSubscriptionPlansInProgress();

  @override
  String toString() {
    return 'OfferedSubscriptionPlansState.offeredSubscriptionPlansInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferedSubscriptionPlansInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offeredSubscriptionPlansInProgress,
    required TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(ServerException serverException)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansInProgress != null) {
      return offeredSubscriptionPlansInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansInProgress value)
        offeredSubscriptionPlansInProgress,
    required TResult Function(OfferedSubscriptionPlansLoadSuccess value)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(OfferedSubscriptionPlansLoadFailure value)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansInProgress != null) {
      return offeredSubscriptionPlansInProgress(this);
    }
    return orElse();
  }
}

abstract class OfferedSubscriptionPlansInProgress
    implements OfferedSubscriptionPlansState {
  const factory OfferedSubscriptionPlansInProgress() =
      _$OfferedSubscriptionPlansInProgress;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansLoadSuccessCopyWith<$Res> {
  factory $OfferedSubscriptionPlansLoadSuccessCopyWith(
          OfferedSubscriptionPlansLoadSuccess value,
          $Res Function(OfferedSubscriptionPlansLoadSuccess) then) =
      _$OfferedSubscriptionPlansLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<OfferedSubscriptionPlan> plans,
      OfferedSubscriptionPlan? defaultFreeSelectedPlan,
      OfferedSubscriptionPlan selectedPlan});
}

/// @nodoc
class _$OfferedSubscriptionPlansLoadSuccessCopyWithImpl<$Res>
    extends _$OfferedSubscriptionPlansStateCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansLoadSuccessCopyWith<$Res> {
  _$OfferedSubscriptionPlansLoadSuccessCopyWithImpl(
      OfferedSubscriptionPlansLoadSuccess _value,
      $Res Function(OfferedSubscriptionPlansLoadSuccess) _then)
      : super(_value, (v) => _then(v as OfferedSubscriptionPlansLoadSuccess));

  @override
  OfferedSubscriptionPlansLoadSuccess get _value =>
      super._value as OfferedSubscriptionPlansLoadSuccess;

  @override
  $Res call({
    Object? plans = freezed,
    Object? defaultFreeSelectedPlan = freezed,
    Object? selectedPlan = freezed,
  }) {
    return _then(OfferedSubscriptionPlansLoadSuccess(
      plans == freezed
          ? _value.plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<OfferedSubscriptionPlan>,
      defaultFreeSelectedPlan == freezed
          ? _value.defaultFreeSelectedPlan
          : defaultFreeSelectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan?,
      selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
    ));
  }
}

/// @nodoc

class _$OfferedSubscriptionPlansLoadSuccess
    implements OfferedSubscriptionPlansLoadSuccess {
  const _$OfferedSubscriptionPlansLoadSuccess(
      this.plans, this.defaultFreeSelectedPlan, this.selectedPlan);

  @override
  final List<OfferedSubscriptionPlan> plans;
  @override
  final OfferedSubscriptionPlan? defaultFreeSelectedPlan;
  @override
  final OfferedSubscriptionPlan selectedPlan;

  @override
  String toString() {
    return 'OfferedSubscriptionPlansState.offeredSubscriptionPlansLoadSuccess(plans: $plans, defaultFreeSelectedPlan: $defaultFreeSelectedPlan, selectedPlan: $selectedPlan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferedSubscriptionPlansLoadSuccess &&
            const DeepCollectionEquality().equals(other.plans, plans) &&
            const DeepCollectionEquality().equals(
                other.defaultFreeSelectedPlan, defaultFreeSelectedPlan) &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(plans),
      const DeepCollectionEquality().hash(defaultFreeSelectedPlan),
      const DeepCollectionEquality().hash(selectedPlan));

  @JsonKey(ignore: true)
  @override
  $OfferedSubscriptionPlansLoadSuccessCopyWith<
          OfferedSubscriptionPlansLoadSuccess>
      get copyWith => _$OfferedSubscriptionPlansLoadSuccessCopyWithImpl<
          OfferedSubscriptionPlansLoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offeredSubscriptionPlansInProgress,
    required TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(ServerException serverException)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadSuccess(
        plans, defaultFreeSelectedPlan, selectedPlan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadSuccess?.call(
        plans, defaultFreeSelectedPlan, selectedPlan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansLoadSuccess != null) {
      return offeredSubscriptionPlansLoadSuccess(
          plans, defaultFreeSelectedPlan, selectedPlan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansInProgress value)
        offeredSubscriptionPlansInProgress,
    required TResult Function(OfferedSubscriptionPlansLoadSuccess value)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(OfferedSubscriptionPlansLoadFailure value)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansLoadSuccess != null) {
      return offeredSubscriptionPlansLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class OfferedSubscriptionPlansLoadSuccess
    implements OfferedSubscriptionPlansState {
  const factory OfferedSubscriptionPlansLoadSuccess(
          List<OfferedSubscriptionPlan> plans,
          OfferedSubscriptionPlan? defaultFreeSelectedPlan,
          OfferedSubscriptionPlan selectedPlan) =
      _$OfferedSubscriptionPlansLoadSuccess;

  List<OfferedSubscriptionPlan> get plans;
  OfferedSubscriptionPlan? get defaultFreeSelectedPlan;
  OfferedSubscriptionPlan get selectedPlan;
  @JsonKey(ignore: true)
  $OfferedSubscriptionPlansLoadSuccessCopyWith<
          OfferedSubscriptionPlansLoadSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferedSubscriptionPlansLoadFailureCopyWith<$Res> {
  factory $OfferedSubscriptionPlansLoadFailureCopyWith(
          OfferedSubscriptionPlansLoadFailure value,
          $Res Function(OfferedSubscriptionPlansLoadFailure) then) =
      _$OfferedSubscriptionPlansLoadFailureCopyWithImpl<$Res>;
  $Res call({ServerException serverException});
}

/// @nodoc
class _$OfferedSubscriptionPlansLoadFailureCopyWithImpl<$Res>
    extends _$OfferedSubscriptionPlansStateCopyWithImpl<$Res>
    implements $OfferedSubscriptionPlansLoadFailureCopyWith<$Res> {
  _$OfferedSubscriptionPlansLoadFailureCopyWithImpl(
      OfferedSubscriptionPlansLoadFailure _value,
      $Res Function(OfferedSubscriptionPlansLoadFailure) _then)
      : super(_value, (v) => _then(v as OfferedSubscriptionPlansLoadFailure));

  @override
  OfferedSubscriptionPlansLoadFailure get _value =>
      super._value as OfferedSubscriptionPlansLoadFailure;

  @override
  $Res call({
    Object? serverException = freezed,
  }) {
    return _then(OfferedSubscriptionPlansLoadFailure(
      serverException == freezed
          ? _value.serverException
          : serverException // ignore: cast_nullable_to_non_nullable
              as ServerException,
    ));
  }
}

/// @nodoc

class _$OfferedSubscriptionPlansLoadFailure
    implements OfferedSubscriptionPlansLoadFailure {
  const _$OfferedSubscriptionPlansLoadFailure(this.serverException);

  @override
  final ServerException serverException;

  @override
  String toString() {
    return 'OfferedSubscriptionPlansState.offeredSubscriptionPlansLoadFailure(serverException: $serverException)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OfferedSubscriptionPlansLoadFailure &&
            const DeepCollectionEquality()
                .equals(other.serverException, serverException));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(serverException));

  @JsonKey(ignore: true)
  @override
  $OfferedSubscriptionPlansLoadFailureCopyWith<
          OfferedSubscriptionPlansLoadFailure>
      get copyWith => _$OfferedSubscriptionPlansLoadFailureCopyWithImpl<
          OfferedSubscriptionPlansLoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() offeredSubscriptionPlansInProgress,
    required TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(ServerException serverException)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadFailure(serverException);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadFailure?.call(serverException);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? offeredSubscriptionPlansInProgress,
    TResult Function(
            List<OfferedSubscriptionPlan> plans,
            OfferedSubscriptionPlan? defaultFreeSelectedPlan,
            OfferedSubscriptionPlan selectedPlan)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(ServerException serverException)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansLoadFailure != null) {
      return offeredSubscriptionPlansLoadFailure(serverException);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OfferedSubscriptionPlansInProgress value)
        offeredSubscriptionPlansInProgress,
    required TResult Function(OfferedSubscriptionPlansLoadSuccess value)
        offeredSubscriptionPlansLoadSuccess,
    required TResult Function(OfferedSubscriptionPlansLoadFailure value)
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
  }) {
    return offeredSubscriptionPlansLoadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OfferedSubscriptionPlansInProgress value)?
        offeredSubscriptionPlansInProgress,
    TResult Function(OfferedSubscriptionPlansLoadSuccess value)?
        offeredSubscriptionPlansLoadSuccess,
    TResult Function(OfferedSubscriptionPlansLoadFailure value)?
        offeredSubscriptionPlansLoadFailure,
    required TResult orElse(),
  }) {
    if (offeredSubscriptionPlansLoadFailure != null) {
      return offeredSubscriptionPlansLoadFailure(this);
    }
    return orElse();
  }
}

abstract class OfferedSubscriptionPlansLoadFailure
    implements OfferedSubscriptionPlansState {
  const factory OfferedSubscriptionPlansLoadFailure(
      ServerException serverException) = _$OfferedSubscriptionPlansLoadFailure;

  ServerException get serverException;
  @JsonKey(ignore: true)
  $OfferedSubscriptionPlansLoadFailureCopyWith<
          OfferedSubscriptionPlansLoadFailure>
      get copyWith => throw _privateConstructorUsedError;
}
