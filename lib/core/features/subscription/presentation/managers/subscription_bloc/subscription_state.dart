part of 'subscription_bloc.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState.initial() = SubscriptionStateInitial;
  const factory SubscriptionState.inProgress() = SubscriptionStateInProgress;
  const factory SubscriptionState.processSuccess(String transactionId) =
      SubscriptionStateProcessSuccess;
  const factory SubscriptionState.creditCardValidationSuccess() =
      SubscriptionCreditCardValidationSuccess;
  const factory SubscriptionState.processFailure(ExceptionBase exception) =
      SubscriptionStateProcessFailure;
}
