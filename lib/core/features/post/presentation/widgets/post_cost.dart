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
        child: LineWithTextOnRow(
          text:
              '${context.loc.from} $minCost${currency ?? '\$'} ${context.loc.to} $maxCost${currency ?? '\$'}',
        ),
      );
    }
    if (maxCost != null) {
      return FittedBox(
        child: LineWithTextOnRow(
          text: '${context.loc.up_to} $maxCost$currency',
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
