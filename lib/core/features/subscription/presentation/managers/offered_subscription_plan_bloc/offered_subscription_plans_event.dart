part of 'offered_subscription_plans_bloc.dart';

@freezed
class OfferedSubscriptionPlansEvent with _$OfferedSubscriptionPlansEvent {
  const factory OfferedSubscriptionPlansEvent.loaded(AccountType plansForAccountType) = OfferedSubscriptionPlansLoaded;
  const factory OfferedSubscriptionPlansEvent.selected(OfferedSubscriptionPlan selectedPlan) = OfferedSubscriptionPlansSelected;
}
