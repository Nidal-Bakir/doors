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
import 'package:collection/collection.dart';

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
            builder: (context) => BlocConsumer<OfferedSubscriptionPlansBloc,
                OfferedSubscriptionPlansState>(
              listener: (context, state) {
                if (state is OfferedSubscriptionPlansLoadSuccess) {
                  widget.onPlanSelected(state.selectedPlan);
                }
              },
              builder: (context, state) {
                return state.when(
                  offeredSubscriptionPlansInProgress: () {
                    return const Padding(
                      padding: EdgeInsets.all(32.0),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: LoadingIndicator(),
                      ),
                    );
                  },
                  offeredSubscriptionPlansLoadSuccess:
                      (plans, defaultFreeSelectedPlan, selectedPlan) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (defaultFreeSelectedPlan != null)
                          Padding(
                            padding: const EdgeInsetsDirectional.only(start: 6.5),
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
                        Column(
                          children: _splitOfferedPlansToRows(
                            plans,
                            selectedPlan,
                            context,
                          ),
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

  /// Split the plans into rows where each row has at most two plans and each
  /// row wrapped with [FittedBox] so the two plans will layout as pairs in each
  /// row no matter the screen's width.
  List<Widget> _splitOfferedPlansToRows(
    List<OfferedSubscriptionPlan> plans,
    OfferedSubscriptionPlan selectedPlan,
    BuildContext context,
  ) {
    final List<Widget> _listOfRowsOfferedPlans = [];

    final _groupOfTowPlans = plans
        .splitBetweenIndexed((index, first, second) => index % 2 == 0)
        .toList();

    for (int i = 0; i < _groupOfTowPlans.length; i++) {
      List<Widget> _rowChildrenList = [];
      _rowChildrenList.addAll(_groupOfTowPlans[i]
          .map(
            (plan) => InkWell(
              onTap: () {
                context.read<OfferedSubscriptionPlansBloc>().add(
                      OfferedSubscriptionPlansSelected(
                        plan,
                      ),
                    );
              },
              child: OfferedPlanCardItem(
                plan: plan,
                accountType: widget.accountType,
                isSelected: selectedPlan == plan,
              ),
            ),
          )
          .toList());

      // so if there is odd number of plans,
      // the last plan will not be larger then the first plans
      if (_rowChildrenList.length.isOdd) {
        _rowChildrenList.add(const SizedBox(
          height: 180,
          width: 135,
        ));
      }
      _rowChildrenList.insert(1, const SizedBox(width: 8));

      _listOfRowsOfferedPlans.add(FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(children: _rowChildrenList),
      ));
    }

    _listOfRowsOfferedPlans.insert(1, const SizedBox(height: 4));

    return _listOfRowsOfferedPlans;
  }
}
