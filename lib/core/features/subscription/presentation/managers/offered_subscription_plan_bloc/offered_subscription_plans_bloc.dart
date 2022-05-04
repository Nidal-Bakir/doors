import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/repository/offered_subscription_plan_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offered_subscription_plans_event.dart';
part 'offered_subscription_plans_state.dart';
part 'offered_subscription_plans_bloc.freezed.dart';

class OfferedSubscriptionPlansBloc
    extends Bloc<OfferedSubscriptionPlansEvent, OfferedSubscriptionPlansState> {
  final OfferedSubscriptionPlanRepository _planRepository;
  OfferedSubscriptionPlansBloc(this._planRepository)
      : super(const OfferedSubscriptionPlansInProgress()) {
    on<OfferedSubscriptionPlansEvent>((event, emit) async {
      await event.map(
          loaded: (event) async =>
              await _onOfferedSubscriptionPlansLoaded(event, emit),
          selected: (event) async =>
              await _onOfferedSubscriptionPlansSelected(event, emit));
    });
  }
  Future<void> _onOfferedSubscriptionPlansLoaded(
      OfferedSubscriptionPlansLoaded subscriptionPlansLoaded,
      Emitter<OfferedSubscriptionPlansState> emit) async {
    emit(const OfferedSubscriptionPlansInProgress());

    final _plans = await _planRepository.getOfferedSubscriptionPlans(
        subscriptionPlansLoaded.plansForAccountType);

    _plans.fold((error) => emit(OfferedSubscriptionPlansLoadFailure(error)),
        (plans) {
      final _defaultSelectedFreePlan = plans
          .sorted((a, b) => b.planPeriod.compareTo(a.planPeriod))
          .firstWhereOrNull((element) => element.isFreeOfChargeOffer);

      emit(OfferedSubscriptionPlansLoadSuccess(plans, _defaultSelectedFreePlan,
          _defaultSelectedFreePlan ?? plans.first));
    });
  }

  Future<void> _onOfferedSubscriptionPlansSelected(
      OfferedSubscriptionPlansSelected selectedPlanEvent,
      Emitter<OfferedSubscriptionPlansState> emit) async {
    final _currentState = state;
    if (_currentState is OfferedSubscriptionPlansLoadSuccess) {
      emit(
        OfferedSubscriptionPlansLoadSuccess(
          _currentState.plans,
          _currentState.defaultFreeSelectedPlan,
          selectedPlanEvent.selectedPlan,
        ),
      );
    }
  }
}
