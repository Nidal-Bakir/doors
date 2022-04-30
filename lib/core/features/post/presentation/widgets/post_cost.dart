import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:flutter/material.dart';

class PostCost extends StatelessWidget {
  final double? minCost;
  final double? maxCost;
  final String? currency;

  const PostCost({
    Key? key,
    required this.minCost,
    required this.maxCost,
    required this.currency,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (maxCost != null && minCost != null) {
      return FittedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LineWithTextOnRow(
              textStyle: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontFamily: 'Roboto'),
              text:
                  '${context.loc.from} $minCost ${currency ?? '\$'}',
            ),
            LineWithTextOnRow(
              textStyle: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontFamily: 'Roboto'),
              text:
                  '${context.loc.to} $maxCost ${currency ?? '\$'}',
            ),
          ],
        ),
      );
    }
    if (maxCost != null) {
      return FittedBox(
        child: LineWithTextOnRow(
          textStyle: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontFamily: 'Roboto'),
          text: '${context.loc.up_to} $maxCost $currency',
        ),
      );
    }
    if (minCost != null) {
      return FittedBox(
        child: LineWithTextOnRow(
          textStyle: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontFamily: 'Roboto'),
          text: '${context.loc.from} $minCost $currency',
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
