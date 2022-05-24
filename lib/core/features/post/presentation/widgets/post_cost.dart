import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/country_currency.dart';
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

  String get currencySymbol =>
      CountryCurrency.extractCurrencySymbolFromStringFormat(currency??'\$');

  String get currencyCode =>
      CountryCurrency.extractCurrencyCodeFromStringFormat(currency??'USD');

  @override
  Widget build(BuildContext context) {
    if (maxCost != null && minCost != null) {
      return FittedBox(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LineWithTextOnRow(
              textStyle: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontFamily: 'Roboto'),
              text: '${context.loc.from} $currencySymbol$minCost $currencyCode',
            ),
            LineWithTextOnRow(
              textStyle: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(fontFamily: 'Roboto'),
              text: '${context.loc.to} $currencySymbol$maxCost $currencyCode',
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
          text: '${context.loc.up_to} $currencySymbol$maxCost $currencyCode',
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
          text: '${context.loc.from} $currencySymbol$minCost $currencyCode',
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
