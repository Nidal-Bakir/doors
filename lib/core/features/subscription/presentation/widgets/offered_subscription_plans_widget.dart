import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:doors/core/features/subscription/presentation/managers/offered_subscription_plan_bloc/offered_subscription_plans_bloc.dart';
import 'package:doors/core/features/subscription/presentation/widgets/offered_plan_card_item.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class OfferedSubscriptionPlansWidget extends StatefulWidget {
  final AccountType accountType;
  final void Function(OfferedSubscriptionPlan selectedPlan) onPlanSelected;
  const OfferedSubscriptionPlansWidget({
    Key? key,
    required this.accountType,
    required this.onPlanSelected,
  }) : super(key: key);

  @override
  State<OfferedSubscriptionPlansWidget> createState() =>
      _OfferedSubscriptionPlansWidgetState();
}

class _OfferedSubscriptionPlansWidgetState
    extends State<OfferedSubscriptionPlansWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LineWithTextOnRow(text: context.loc.subscription),
        BlocProvider<OfferedSubscriptionPlansBloc>(
          create: (_) => GetIt.I.get<OfferedSubscriptionPlansBloc>()
            ..add(OfferedSubscriptionPlansLoaded(widget.accountType)),
          child: Builder(
            builder: (context) => BlocBuilder<OfferedSubscriptionPlansBloc,
                OfferedSubscriptionPlansState>(
              builder: (context, state) {
                return state.when(
                  offeredSubscriptionPlansInProgress: () => const Padding(
                    padding: EdgeInsets.all(32.0),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: LoadingIndicator(),
                    ),
                  ),
                  offeredSubscriptionPlansLoadSuccess:
                      (plans, defaultFreeSelectedPlan, selectedPlan) {
                    widget.onPlanSelected(selectedPlan);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (defaultFreeSelectedPlan != null)
                          Padding(
                            padding: const EdgeInsets.only(left: 6.5),
                            child: RichText(
                              text: TextSpan(
                                text: context.loc.free + ' ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    ?.copyWith(
                                      color: const Color.fromARGB(
                                          255, 12, 214, 18),
                                    ),
                                children: [
                                  TextSpan(
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2
                                        ?.copyWith(
                                          color: Colors.grey[700],
                                        ),
                                    text: context.loc.for_x_months(
                                      defaultFreeSelectedPlan.planPeriod,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          children: [
                            for (var i = 0; i < plans.length; i++)
                              InkWell(
                                onTap: () {
                                  context
                                      .read<OfferedSubscriptionPlansBloc>()
                                      .add(
                                        OfferedSubscriptionPlansSelected(
                                            plans[i]),
                                      );
                                },
                                child: OfferedPlanCardItem(
                                  plan: plans[i],
                                  accountType: widget.accountType,
                                  isSelected: selectedPlan == plans[i],
                                ),
                              )
                          ],
                        ),
                      ],
                    );
                  },
                  offeredSubscriptionPlansLoadFailure: (error) {
                    return Center(
                      child: TextButton(
                        onPressed: () {
                          context.read<OfferedSubscriptionPlansBloc>().add(
                              OfferedSubscriptionPlansLoaded(
                                  widget.accountType));
                        },
                        child: Text(context.loc.retry),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
