import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/presentation/managers/subscription_bloc/subscription_bloc.dart';
import 'package:doors/core/features/subscription/presentation/screens/add_credit_card_screen.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> showBottomSheetToSelectPaymentMethod(
    BuildContext context,
    OfferedSubscriptionPlan selectedPlan,
    String userId,
    SubscriptionBloc _subscriptionBloc) async {
  final _theme = Theme.of(context);
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
        child: BlocBuilder<SubscriptionBloc, SubscriptionState>(
          bloc: _subscriptionBloc,
          builder: (context, state) {
            return state.maybeWhen(
              inProgress: () {
                return Theme(
                  data: _theme.copyWith(
                    progressIndicatorTheme:
                        _theme.progressIndicatorTheme.copyWith(
                      color: _theme.colorScheme.secondary,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: LoadingIndicator(),
                    ),
                  ),
                );
              },
              processFailure: (error) {
                return _PaymentSelection(
                  error: error.getLocalMessageError(context),
                  selectedPlan: selectedPlan,
                  subscriptionBloc: _subscriptionBloc,
                  userId: userId,
                );
              },
              orElse: () => _PaymentSelection(
                selectedPlan: selectedPlan,
                subscriptionBloc: _subscriptionBloc,
                userId: userId,
              ),
            );
          },
        ),
      );
    },
  );
}

class _PaymentSelection extends StatelessWidget {
  final String? error;
  final OfferedSubscriptionPlan selectedPlan;
  final String userId;
  final SubscriptionBloc subscriptionBloc;
  const _PaymentSelection({
    Key? key,
    this.error,
    required this.subscriptionBloc,
    required this.selectedPlan,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Select Payment Method',
          style: Theme.of(context).textTheme.headline6,
        ),
        if (error != null)
          Text(
            error!,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
          ),
        const SizedBox(
          height: 4,
        ),
        InkWell(
          onTap: () {
            subscriptionBloc.add(
              SubscriptionPaypalPaymentFlowStarted(selectedPlan, userId),
            );
          },
          child: Row(
            children: [
              Image.asset(
                'assets/icons/paypal.png',
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 8),
              Text('Paypal', style: Theme.of(context).textTheme.headline6),
            ],
          ),
        ),
        const Divider(),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(
              AddCreditCardScreen.routeName,
              arguments: {
                'subscriptionBloc': subscriptionBloc,
                'selectedPlan': selectedPlan,
                'userId': userId,
              },
            );
          },
          child: Row(
            children: [
              Image.asset(
                'assets/icons/credit-card.png',
                fit: BoxFit.cover,
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 8),
              Text(
                context.loc.credit_or_debit_card,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
