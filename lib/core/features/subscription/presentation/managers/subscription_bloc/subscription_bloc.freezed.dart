// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SubscriptionEventTearOff {
  const _$SubscriptionEventTearOff();

  SubscriptionCreditCardAdded creditCardAdded(CreditCardInfo cardInfo,
      OfferedSubscriptionPlan selectedPlan, String userId) {
    return SubscriptionCreditCardAdded(
      cardInfo,
      selectedPlan,
      userId,
    );
  }

  SubscriptionPaypalPaymentFlowStarted paypalPaymentFlowStarted(
      OfferedSubscriptionPlan selectedPlan, String userId) {
    return SubscriptionPaypalPaymentFlowStarted(
      selectedPlan,
      userId,
    );
  }

  SubscriptionFreeSubscriptionRequested freeSubscriptionRequested(
      OfferedSubscriptionPlan selectedPlan, String userId) {
    return SubscriptionFreeSubscriptionRequested(
      selectedPlan,
      userId,
    );
  }
}

/// @nodoc
const $SubscriptionEvent = _$SubscriptionEventTearOff();

/// @nodoc
mixin _$SubscriptionEvent {
  OfferedSubscriptionPlan get selectedPlan =>
      throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)
        creditCardAdded,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        paypalPaymentFlowStarted,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        freeSubscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionCreditCardAdded value)
        creditCardAdded,
    required TResult Function(SubscriptionPaypalPaymentFlowStarted value)
        paypalPaymentFlowStarted,
    required TResult Function(SubscriptionFreeSubscriptionRequested value)
        freeSubscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionEventCopyWith<SubscriptionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res>;
  $Res call({OfferedSubscriptionPlan selectedPlan, String userId});
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  final SubscriptionEvent _value;
  // ignore: unused_field
  final $Res Function(SubscriptionEvent) _then;

  @override
  $Res call({
    Object? selectedPlan = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPlan: selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SubscriptionCreditCardAddedCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionCreditCardAddedCopyWith(
          SubscriptionCreditCardAdded value,
          $Res Function(SubscriptionCreditCardAdded) then) =
      _$SubscriptionCreditCardAddedCopyWithImpl<$Res>;
  @override
  $Res call(
      {CreditCardInfo cardInfo,
      OfferedSubscriptionPlan selectedPlan,
      String userId});
}

/// @nodoc
class _$SubscriptionCreditCardAddedCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res>
    implements $SubscriptionCreditCardAddedCopyWith<$Res> {
  _$SubscriptionCreditCardAddedCopyWithImpl(SubscriptionCreditCardAdded _value,
      $Res Function(SubscriptionCreditCardAdded) _then)
      : super(_value, (v) => _then(v as SubscriptionCreditCardAdded));

  @override
  SubscriptionCreditCardAdded get _value =>
      super._value as SubscriptionCreditCardAdded;

  @override
  $Res call({
    Object? cardInfo = freezed,
    Object? selectedPlan = freezed,
    Object? userId = freezed,
  }) {
    return _then(SubscriptionCreditCardAdded(
      cardInfo == freezed
          ? _value.cardInfo
          : cardInfo // ignore: cast_nullable_to_non_nullable
              as CreditCardInfo,
      selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionCreditCardAdded implements SubscriptionCreditCardAdded {
  const _$SubscriptionCreditCardAdded(
      this.cardInfo, this.selectedPlan, this.userId);

  @override
  final CreditCardInfo cardInfo;
  @override
  final OfferedSubscriptionPlan selectedPlan;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionEvent.creditCardAdded(cardInfo: $cardInfo, selectedPlan: $selectedPlan, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionCreditCardAdded &&
            const DeepCollectionEquality().equals(other.cardInfo, cardInfo) &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cardInfo),
      const DeepCollectionEquality().hash(selectedPlan),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $SubscriptionCreditCardAddedCopyWith<SubscriptionCreditCardAdded>
      get copyWith => _$SubscriptionCreditCardAddedCopyWithImpl<
          SubscriptionCreditCardAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)
        creditCardAdded,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        paypalPaymentFlowStarted,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        freeSubscriptionRequested,
  }) {
    return creditCardAdded(cardInfo, selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
  }) {
    return creditCardAdded?.call(cardInfo, selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (creditCardAdded != null) {
      return creditCardAdded(cardInfo, selectedPlan, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionCreditCardAdded value)
        creditCardAdded,
    required TResult Function(SubscriptionPaypalPaymentFlowStarted value)
        paypalPaymentFlowStarted,
    required TResult Function(SubscriptionFreeSubscriptionRequested value)
        freeSubscriptionRequested,
  }) {
    return creditCardAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
  }) {
    return creditCardAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (creditCardAdded != null) {
      return creditCardAdded(this);
    }
    return orElse();
  }
}

abstract class SubscriptionCreditCardAdded implements SubscriptionEvent {
  const factory SubscriptionCreditCardAdded(
      CreditCardInfo cardInfo,
      OfferedSubscriptionPlan selectedPlan,
      String userId) = _$SubscriptionCreditCardAdded;

  CreditCardInfo get cardInfo;
  @override
  OfferedSubscriptionPlan get selectedPlan;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  $SubscriptionCreditCardAddedCopyWith<SubscriptionCreditCardAdded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionPaypalPaymentFlowStartedCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionPaypalPaymentFlowStartedCopyWith(
          SubscriptionPaypalPaymentFlowStarted value,
          $Res Function(SubscriptionPaypalPaymentFlowStarted) then) =
      _$SubscriptionPaypalPaymentFlowStartedCopyWithImpl<$Res>;
  @override
  $Res call({OfferedSubscriptionPlan selectedPlan, String userId});
}

/// @nodoc
class _$SubscriptionPaypalPaymentFlowStartedCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res>
    implements $SubscriptionPaypalPaymentFlowStartedCopyWith<$Res> {
  _$SubscriptionPaypalPaymentFlowStartedCopyWithImpl(
      SubscriptionPaypalPaymentFlowStarted _value,
      $Res Function(SubscriptionPaypalPaymentFlowStarted) _then)
      : super(_value, (v) => _then(v as SubscriptionPaypalPaymentFlowStarted));

  @override
  SubscriptionPaypalPaymentFlowStarted get _value =>
      super._value as SubscriptionPaypalPaymentFlowStarted;

  @override
  $Res call({
    Object? selectedPlan = freezed,
    Object? userId = freezed,
  }) {
    return _then(SubscriptionPaypalPaymentFlowStarted(
      selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionPaypalPaymentFlowStarted
    implements SubscriptionPaypalPaymentFlowStarted {
  const _$SubscriptionPaypalPaymentFlowStarted(this.selectedPlan, this.userId);

  @override
  final OfferedSubscriptionPlan selectedPlan;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionEvent.paypalPaymentFlowStarted(selectedPlan: $selectedPlan, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionPaypalPaymentFlowStarted &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedPlan),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $SubscriptionPaypalPaymentFlowStartedCopyWith<
          SubscriptionPaypalPaymentFlowStarted>
      get copyWith => _$SubscriptionPaypalPaymentFlowStartedCopyWithImpl<
          SubscriptionPaypalPaymentFlowStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)
        creditCardAdded,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        paypalPaymentFlowStarted,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        freeSubscriptionRequested,
  }) {
    return paypalPaymentFlowStarted(selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
  }) {
    return paypalPaymentFlowStarted?.call(selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (paypalPaymentFlowStarted != null) {
      return paypalPaymentFlowStarted(selectedPlan, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionCreditCardAdded value)
        creditCardAdded,
    required TResult Function(SubscriptionPaypalPaymentFlowStarted value)
        paypalPaymentFlowStarted,
    required TResult Function(SubscriptionFreeSubscriptionRequested value)
        freeSubscriptionRequested,
  }) {
    return paypalPaymentFlowStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
  }) {
    return paypalPaymentFlowStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (paypalPaymentFlowStarted != null) {
      return paypalPaymentFlowStarted(this);
    }
    return orElse();
  }
}

abstract class SubscriptionPaypalPaymentFlowStarted
    implements SubscriptionEvent {
  const factory SubscriptionPaypalPaymentFlowStarted(
          OfferedSubscriptionPlan selectedPlan, String userId) =
      _$SubscriptionPaypalPaymentFlowStarted;

  @override
  OfferedSubscriptionPlan get selectedPlan;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  $SubscriptionPaypalPaymentFlowStartedCopyWith<
          SubscriptionPaypalPaymentFlowStarted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionFreeSubscriptionRequestedCopyWith<$Res>
    implements $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionFreeSubscriptionRequestedCopyWith(
          SubscriptionFreeSubscriptionRequested value,
          $Res Function(SubscriptionFreeSubscriptionRequested) then) =
      _$SubscriptionFreeSubscriptionRequestedCopyWithImpl<$Res>;
  @override
  $Res call({OfferedSubscriptionPlan selectedPlan, String userId});
}

/// @nodoc
class _$SubscriptionFreeSubscriptionRequestedCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res>
    implements $SubscriptionFreeSubscriptionRequestedCopyWith<$Res> {
  _$SubscriptionFreeSubscriptionRequestedCopyWithImpl(
      SubscriptionFreeSubscriptionRequested _value,
      $Res Function(SubscriptionFreeSubscriptionRequested) _then)
      : super(_value, (v) => _then(v as SubscriptionFreeSubscriptionRequested));

  @override
  SubscriptionFreeSubscriptionRequested get _value =>
      super._value as SubscriptionFreeSubscriptionRequested;

  @override
  $Res call({
    Object? selectedPlan = freezed,
    Object? userId = freezed,
  }) {
    return _then(SubscriptionFreeSubscriptionRequested(
      selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as OfferedSubscriptionPlan,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionFreeSubscriptionRequested
    implements SubscriptionFreeSubscriptionRequested {
  const _$SubscriptionFreeSubscriptionRequested(this.selectedPlan, this.userId);

  @override
  final OfferedSubscriptionPlan selectedPlan;
  @override
  final String userId;

  @override
  String toString() {
    return 'SubscriptionEvent.freeSubscriptionRequested(selectedPlan: $selectedPlan, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionFreeSubscriptionRequested &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedPlan),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $SubscriptionFreeSubscriptionRequestedCopyWith<
          SubscriptionFreeSubscriptionRequested>
      get copyWith => _$SubscriptionFreeSubscriptionRequestedCopyWithImpl<
          SubscriptionFreeSubscriptionRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)
        creditCardAdded,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        paypalPaymentFlowStarted,
    required TResult Function(
            OfferedSubscriptionPlan selectedPlan, String userId)
        freeSubscriptionRequested,
  }) {
    return freeSubscriptionRequested(selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
  }) {
    return freeSubscriptionRequested?.call(selectedPlan, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreditCardInfo cardInfo,
            OfferedSubscriptionPlan selectedPlan, String userId)?
        creditCardAdded,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        paypalPaymentFlowStarted,
    TResult Function(OfferedSubscriptionPlan selectedPlan, String userId)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (freeSubscriptionRequested != null) {
      return freeSubscriptionRequested(selectedPlan, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionCreditCardAdded value)
        creditCardAdded,
    required TResult Function(SubscriptionPaypalPaymentFlowStarted value)
        paypalPaymentFlowStarted,
    required TResult Function(SubscriptionFreeSubscriptionRequested value)
        freeSubscriptionRequested,
  }) {
    return freeSubscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
  }) {
    return freeSubscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionCreditCardAdded value)? creditCardAdded,
    TResult Function(SubscriptionPaypalPaymentFlowStarted value)?
        paypalPaymentFlowStarted,
    TResult Function(SubscriptionFreeSubscriptionRequested value)?
        freeSubscriptionRequested,
    required TResult orElse(),
  }) {
    if (freeSubscriptionRequested != null) {
      return freeSubscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class SubscriptionFreeSubscriptionRequested
    implements SubscriptionEvent {
  const factory SubscriptionFreeSubscriptionRequested(
          OfferedSubscriptionPlan selectedPlan, String userId) =
      _$SubscriptionFreeSubscriptionRequested;

  @override
  OfferedSubscriptionPlan get selectedPlan;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  $SubscriptionFreeSubscriptionRequestedCopyWith<
          SubscriptionFreeSubscriptionRequested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SubscriptionStateTearOff {
  const _$SubscriptionStateTearOff();

  SubscriptionStateInitial initial() {
    return const SubscriptionStateInitial();
  }

  SubscriptionStateInProgress inProgress() {
    return const SubscriptionStateInProgress();
  }

  SubscriptionStateProcessSuccess processSuccess(String transactionId) {
    return SubscriptionStateProcessSuccess(
      transactionId,
    );
  }

  SubscriptionCreditCardValidationSuccess creditCardValidationSuccess() {
    return const SubscriptionCreditCardValidationSuccess();
  }

  SubscriptionStateProcessFailure processFailure(ExceptionBase exception) {
    return SubscriptionStateProcessFailure(
      exception,
    );
  }
}

/// @nodoc
const $SubscriptionState = _$SubscriptionStateTearOff();

/// @nodoc
mixin _$SubscriptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

  final SubscriptionState _value;
  // ignore: unused_field
  final $Res Function(SubscriptionState) _then;
}

/// @nodoc
abstract class $SubscriptionStateInitialCopyWith<$Res> {
  factory $SubscriptionStateInitialCopyWith(SubscriptionStateInitial value,
          $Res Function(SubscriptionStateInitial) then) =
      _$SubscriptionStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionStateInitialCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateInitialCopyWith<$Res> {
  _$SubscriptionStateInitialCopyWithImpl(SubscriptionStateInitial _value,
      $Res Function(SubscriptionStateInitial) _then)
      : super(_value, (v) => _then(v as SubscriptionStateInitial));

  @override
  SubscriptionStateInitial get _value =>
      super._value as SubscriptionStateInitial;
}

/// @nodoc

class _$SubscriptionStateInitial implements SubscriptionStateInitial {
  const _$SubscriptionStateInitial();

  @override
  String toString() {
    return 'SubscriptionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SubscriptionStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
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
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SubscriptionStateInitial implements SubscriptionState {
  const factory SubscriptionStateInitial() = _$SubscriptionStateInitial;
}

/// @nodoc
abstract class $SubscriptionStateInProgressCopyWith<$Res> {
  factory $SubscriptionStateInProgressCopyWith(
          SubscriptionStateInProgress value,
          $Res Function(SubscriptionStateInProgress) then) =
      _$SubscriptionStateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionStateInProgressCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateInProgressCopyWith<$Res> {
  _$SubscriptionStateInProgressCopyWithImpl(SubscriptionStateInProgress _value,
      $Res Function(SubscriptionStateInProgress) _then)
      : super(_value, (v) => _then(v as SubscriptionStateInProgress));

  @override
  SubscriptionStateInProgress get _value =>
      super._value as SubscriptionStateInProgress;
}

/// @nodoc

class _$SubscriptionStateInProgress implements SubscriptionStateInProgress {
  const _$SubscriptionStateInProgress();

  @override
  String toString() {
    return 'SubscriptionState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
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
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class SubscriptionStateInProgress implements SubscriptionState {
  const factory SubscriptionStateInProgress() = _$SubscriptionStateInProgress;
}

/// @nodoc
abstract class $SubscriptionStateProcessSuccessCopyWith<$Res> {
  factory $SubscriptionStateProcessSuccessCopyWith(
          SubscriptionStateProcessSuccess value,
          $Res Function(SubscriptionStateProcessSuccess) then) =
      _$SubscriptionStateProcessSuccessCopyWithImpl<$Res>;
  $Res call({String transactionId});
}

/// @nodoc
class _$SubscriptionStateProcessSuccessCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateProcessSuccessCopyWith<$Res> {
  _$SubscriptionStateProcessSuccessCopyWithImpl(
      SubscriptionStateProcessSuccess _value,
      $Res Function(SubscriptionStateProcessSuccess) _then)
      : super(_value, (v) => _then(v as SubscriptionStateProcessSuccess));

  @override
  SubscriptionStateProcessSuccess get _value =>
      super._value as SubscriptionStateProcessSuccess;

  @override
  $Res call({
    Object? transactionId = freezed,
  }) {
    return _then(SubscriptionStateProcessSuccess(
      transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateProcessSuccess
    implements SubscriptionStateProcessSuccess {
  const _$SubscriptionStateProcessSuccess(this.transactionId);

  @override
  final String transactionId;

  @override
  String toString() {
    return 'SubscriptionState.processSuccess(transactionId: $transactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionStateProcessSuccess &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionId));

  @JsonKey(ignore: true)
  @override
  $SubscriptionStateProcessSuccessCopyWith<SubscriptionStateProcessSuccess>
      get copyWith => _$SubscriptionStateProcessSuccessCopyWithImpl<
          SubscriptionStateProcessSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) {
    return processSuccess(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) {
    return processSuccess?.call(transactionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
    required TResult orElse(),
  }) {
    if (processSuccess != null) {
      return processSuccess(transactionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) {
    return processSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) {
    return processSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) {
    if (processSuccess != null) {
      return processSuccess(this);
    }
    return orElse();
  }
}

abstract class SubscriptionStateProcessSuccess implements SubscriptionState {
  const factory SubscriptionStateProcessSuccess(String transactionId) =
      _$SubscriptionStateProcessSuccess;

  String get transactionId;
  @JsonKey(ignore: true)
  $SubscriptionStateProcessSuccessCopyWith<SubscriptionStateProcessSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCreditCardValidationSuccessCopyWith<$Res> {
  factory $SubscriptionCreditCardValidationSuccessCopyWith(
          SubscriptionCreditCardValidationSuccess value,
          $Res Function(SubscriptionCreditCardValidationSuccess) then) =
      _$SubscriptionCreditCardValidationSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubscriptionCreditCardValidationSuccessCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionCreditCardValidationSuccessCopyWith<$Res> {
  _$SubscriptionCreditCardValidationSuccessCopyWithImpl(
      SubscriptionCreditCardValidationSuccess _value,
      $Res Function(SubscriptionCreditCardValidationSuccess) _then)
      : super(
            _value, (v) => _then(v as SubscriptionCreditCardValidationSuccess));

  @override
  SubscriptionCreditCardValidationSuccess get _value =>
      super._value as SubscriptionCreditCardValidationSuccess;
}

/// @nodoc

class _$SubscriptionCreditCardValidationSuccess
    implements SubscriptionCreditCardValidationSuccess {
  const _$SubscriptionCreditCardValidationSuccess();

  @override
  String toString() {
    return 'SubscriptionState.creditCardValidationSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionCreditCardValidationSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) {
    return creditCardValidationSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) {
    return creditCardValidationSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
    required TResult orElse(),
  }) {
    if (creditCardValidationSuccess != null) {
      return creditCardValidationSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) {
    return creditCardValidationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) {
    return creditCardValidationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) {
    if (creditCardValidationSuccess != null) {
      return creditCardValidationSuccess(this);
    }
    return orElse();
  }
}

abstract class SubscriptionCreditCardValidationSuccess
    implements SubscriptionState {
  const factory SubscriptionCreditCardValidationSuccess() =
      _$SubscriptionCreditCardValidationSuccess;
}

/// @nodoc
abstract class $SubscriptionStateProcessFailureCopyWith<$Res> {
  factory $SubscriptionStateProcessFailureCopyWith(
          SubscriptionStateProcessFailure value,
          $Res Function(SubscriptionStateProcessFailure) then) =
      _$SubscriptionStateProcessFailureCopyWithImpl<$Res>;
  $Res call({ExceptionBase exception});
}

/// @nodoc
class _$SubscriptionStateProcessFailureCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res>
    implements $SubscriptionStateProcessFailureCopyWith<$Res> {
  _$SubscriptionStateProcessFailureCopyWithImpl(
      SubscriptionStateProcessFailure _value,
      $Res Function(SubscriptionStateProcessFailure) _then)
      : super(_value, (v) => _then(v as SubscriptionStateProcessFailure));

  @override
  SubscriptionStateProcessFailure get _value =>
      super._value as SubscriptionStateProcessFailure;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(SubscriptionStateProcessFailure(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionBase,
    ));
  }
}

/// @nodoc

class _$SubscriptionStateProcessFailure
    implements SubscriptionStateProcessFailure {
  const _$SubscriptionStateProcessFailure(this.exception);

  @override
  final ExceptionBase exception;

  @override
  String toString() {
    return 'SubscriptionState.processFailure(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionStateProcessFailure &&
            const DeepCollectionEquality().equals(other.exception, exception));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(exception));

  @JsonKey(ignore: true)
  @override
  $SubscriptionStateProcessFailureCopyWith<SubscriptionStateProcessFailure>
      get copyWith => _$SubscriptionStateProcessFailureCopyWithImpl<
          SubscriptionStateProcessFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() inProgress,
    required TResult Function(String transactionId) processSuccess,
    required TResult Function() creditCardValidationSuccess,
    required TResult Function(ExceptionBase exception) processFailure,
  }) {
    return processFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
  }) {
    return processFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? inProgress,
    TResult Function(String transactionId)? processSuccess,
    TResult Function()? creditCardValidationSuccess,
    TResult Function(ExceptionBase exception)? processFailure,
    required TResult orElse(),
  }) {
    if (processFailure != null) {
      return processFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionStateInitial value) initial,
    required TResult Function(SubscriptionStateInProgress value) inProgress,
    required TResult Function(SubscriptionStateProcessSuccess value)
        processSuccess,
    required TResult Function(SubscriptionCreditCardValidationSuccess value)
        creditCardValidationSuccess,
    required TResult Function(SubscriptionStateProcessFailure value)
        processFailure,
  }) {
    return processFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
  }) {
    return processFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionStateInitial value)? initial,
    TResult Function(SubscriptionStateInProgress value)? inProgress,
    TResult Function(SubscriptionStateProcessSuccess value)? processSuccess,
    TResult Function(SubscriptionCreditCardValidationSuccess value)?
        creditCardValidationSuccess,
    TResult Function(SubscriptionStateProcessFailure value)? processFailure,
    required TResult orElse(),
  }) {
    if (processFailure != null) {
      return processFailure(this);
    }
    return orElse();
  }
}

abstract class SubscriptionStateProcessFailure implements SubscriptionState {
  const factory SubscriptionStateProcessFailure(ExceptionBase exception) =
      _$SubscriptionStateProcessFailure;

  ExceptionBase get exception;
  @JsonKey(ignore: true)
  $SubscriptionStateProcessFailureCopyWith<SubscriptionStateProcessFailure>
      get copyWith => throw _privateConstructorUsedError;
}
