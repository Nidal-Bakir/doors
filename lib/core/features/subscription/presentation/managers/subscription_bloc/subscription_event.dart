part of 'subscription_bloc.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  const factory SubscriptionEvent.creditCardAdded(
    CreditCardInfo cardInfo,
    OfferedSubscriptionPlan selectedPlan,
    String userId,
  ) = SubscriptionCreditCardAdded;
  const factory SubscriptionEvent.paypalPaymentFlowStarted(
    OfferedSubscriptionPlan selectedPlan,
    String userId,
  ) = SubscriptionPaypalPaymentFlowStarted;
  const factory SubscriptionEvent.freeSubscriptionRequested(
    OfferedSubscriptionPlan selectedPlan,
    String userId,
  ) = SubscriptionFreeSubscriptionRequested;
}
