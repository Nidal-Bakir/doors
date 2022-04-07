part of 'offered_subscription_plans_bloc.dart';

@freezed
class OfferedSubscriptionPlansState with _$OfferedSubscriptionPlansState {
  const factory OfferedSubscriptionPlansState.offeredSubscriptionPlansInProgress() =
      OfferedSubscriptionPlansInProgress;
  const factory OfferedSubscriptionPlansState.offeredSubscriptionPlansLoadSuccess(
    List<OfferedSubscriptionPlan> plans,
    OfferedSubscriptionPlan? defaultFreeSelectedPlan,
    OfferedSubscriptionPlan selectedPlan,
  ) = OfferedSubscriptionPlansLoadSuccess;

  const factory OfferedSubscriptionPlansState.offeredSubscriptionPlansLoadFailure(
      ServerException serverException) = OfferedSubscriptionPlansLoadFailure;
}
