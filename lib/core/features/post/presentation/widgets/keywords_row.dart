import 'dart:math';

import 'package:doors/core/widgets/measured_size.dart';
import 'package:flutter/material.dart';

class KeywordsRow extends StatelessWidget {
  final Set<String> keywords;
  final bool withColors;
  final int? limit;
  final bool isCardItemView;

  const KeywordsRow({
    Key? key,
    required this.keywords,
    required this.isCardItemView,
    this.withColors = false,
    this.limit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (keywords.isEmpty) {
      return const SizedBox.shrink();
    }
    return isCardItemView
        ? _CardView(
            keywords: keywords,
            withColors: withColors,
            limit: limit,
          )
        : _PostScreenView(
            keywords: keywords,
            withColors: withColors,
          );
  }
}

class _PostScreenView extends StatelessWidget {
  final Set<String> keywords;
  final bool withColors;
  const _PostScreenView({
    Key? key,
    required this.keywords,
    required this.withColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 2,
      runSpacing: 8,
      children: keywords
          .map(
            (e) => _Keyword(
              keywordLabel: e,
              withColors: withColors,
            ),
          )
          .toList(),
    );
  }
}

/// In card view the limit will change according to the screen size and available
/// space to prevent the layout from pixies overflow in case the keywords are long
/// in length.
///
/// So we will calculate the width of the row and if its more then the
/// available space we will remove one keyword (decrement the limit) and loop
/// on this until the rwo width fit the available space.
///
/// Note: it could not display any keywords event if there is one keyword and the
/// keyword is larger then the available space then it will not be displayed.
class _CardView extends StatefulWidget {
  final int? limit;
  final Set<String> keywords;
  final bool withColors;
  const _CardView({
    Key? key,
    this.limit,
    required this.keywords,
    required this.withColors,
  }) : super(key: key);

  @override
  State<_CardView> createState() => _CardViewState();
}

class _CardViewState extends State<_CardView> {
  late var _limit = widget.limit ?? widget.keywords.length;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return MeasuredSize(
          onChange: (size) {
            setState(() {
              if (size.width >= constraints.maxWidth && _limit != 0) {
                _limit--;
              }
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: widget.keywords
                .map(
                  (keywordLabel) => _Keyword(
                    keywordLabel: keywordLabel,
                    withColors: widget.withColors,
                  ),
                )
                .take(_limit)
                .toList(),
          ),
        );
      },
    );
  }
}

class _Keyword extends StatelessWidget {
  final bool withColors;
  final String keywordLabel;
  _Keyword({
    Key? key,
    required this.withColors,
    required this.keywordLabel,
  }) : super(key: key);
  final _random = Random();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3),
        ),
        type: MaterialType.card,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            keywordLabel.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText2,
          ),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: withColors
                    ? Colors.primaries[_random.nextInt(Colors.primaries.length)]
                    : Theme.of(context).colorScheme.primary,
                width: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
