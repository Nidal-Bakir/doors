import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/subscription/model/payment.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class CompanySubscriptionSelection extends StatelessWidget {
  final void Function(UserSubscription subscriptionPlan) onSubscriptionChange;
  const CompanySubscriptionSelection({
    Key? key,
    required this.onSubscriptionChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // LineWithTextOnRow(text: context.loc.
      ],
    );
  }
}
