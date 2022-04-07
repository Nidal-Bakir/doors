import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/subscription/model/card_info.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/repository/subscription_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_event.dart';
part 'subscription_state.dart';
part 'subscription_bloc.freezed.dart';

class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {
  final SubscriptionRepository _subscriptionRepository;
  SubscriptionBloc(this._subscriptionRepository)
      : super(const SubscriptionStateInitial()) {
    on<SubscriptionEvent>((event, emit) async {
      await event.map(
          creditCardAdded: (event) async =>
              await _onCreditCardAdded(event, emit),
          paypalPaymentFlowStarted: (event) async =>
              await _onPaypalPaymentFlowStarted(event, emit),
          freeSubscriptionRequested: (event) async =>
              await _onFreeSubscriptionRequested(event, emit));
    });
  }

  Future<void> _onCreditCardAdded(SubscriptionCreditCardAdded event,
      Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionStateInProgress());

    final nonceResponse = await _subscriptionRepository
        .validateCreditCardAndGetNonce(creditCardInfo: event.cardInfo);

    await nonceResponse.fold((error) {
      emit(SubscriptionStateProcessFailure(error));
    }, (nonce) async {
      emit(const SubscriptionCreditCardValidationSuccess());

      emit(const SubscriptionStateInProgress());
      final transactionIdResponse =
          await _subscriptionRepository.startCreditCardPaymentProcess(
              selectedPlan: event.selectedPlan,
              userId: event.userId,
              nonce: nonce);

      transactionIdResponse.fold(
          (error) => emit(SubscriptionStateProcessFailure(error)),
          (transactionId) =>
              emit(SubscriptionStateProcessSuccess(transactionId)));
    });
  }

  Future<void> _onPaypalPaymentFlowStarted(
      SubscriptionPaypalPaymentFlowStarted event,
      Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionStateInProgress());

    final nonceResponse = await _subscriptionRepository
        .startPaypalPaymentProcess(event.selectedPlan, event.userId);
    nonceResponse.fold(
        (error) => emit(SubscriptionStateProcessFailure(error)),
        (transactionId) =>
            emit(SubscriptionStateProcessSuccess(transactionId)));
  }

  Future<void> _onFreeSubscriptionRequested(
      SubscriptionFreeSubscriptionRequested event,
      Emitter<SubscriptionState> emit) async {
    emit(const SubscriptionStateInProgress());
    final transactionId = await _subscriptionRepository.processFreeSubscription(
      selectedPlanId: event.selectedPlan.planId,
      userId: event.userId,
    );
    transactionId.fold(
        (error) => emit(SubscriptionStateProcessFailure(error)),
        (transactionId) =>
            emit(SubscriptionStateProcessSuccess(transactionId)));
  }
}
