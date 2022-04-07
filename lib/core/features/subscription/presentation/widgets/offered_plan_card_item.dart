import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/subscription/model/offered_subscription_plan.dart';
import 'package:flutter/material.dart';

class OfferedPlanCardItem extends StatelessWidget {
  final bool isSelected;
  final OfferedSubscriptionPlan plan;
  const OfferedPlanCardItem({
    Key? key,
    required this.plan,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, left: 4),
      height: 180,
      width: 135,
      decoration: BoxDecoration(
        border: isSelected
            ? Border.all(color: Theme.of(context).colorScheme.primary)
            : null,
        color: Theme.of(context).colorScheme.onSurface,
        borderRadius: BorderRadius.circular(
          5,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(isSelected ? Icons.circle : Icons.circle_outlined,
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : null),
            ),
            Text(
              plan.planPeriod.toString() + ' ' + context.loc.months,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: _PlanFeature(
                label: context.loc.add_internal_ships,
              ),
            ),
            _PlanFeature(
              label: context.loc.no_ads,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: RichText(
                text: TextSpan(
                  children: [
                    if (plan.isFreeOfChargeOffer)
                      TextSpan(
                        text: context.loc.free + '  ',
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    TextSpan(
                      text: plan.amount.toString() + "\$",
                      style: plan.isFreeOfChargeOffer
                          ? Theme.of(context).textTheme.bodyText1?.copyWith(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 4,
                              )
                          : Theme.of(context).textTheme.headline6,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PlanFeature extends StatelessWidget {
  const _PlanFeature({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 3),
          height: 19,
          width: 19,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(
              3,
            ),
          ),
          child: Icon(
            Icons.check,
            color: Theme.of(context).colorScheme.secondary,
            size: 19,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyText1,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
