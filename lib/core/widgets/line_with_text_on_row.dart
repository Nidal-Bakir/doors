import 'package:flutter/material.dart';

class LineWithTextOnRow extends StatelessWidget {
  final Size lineSize;
  final Color? lineColor;
  final InlineSpan textSpan;
  final EdgeInsetsDirectional? lineMargin;
  final CrossAxisAlignment crossAxisAlignment;
  final TextStyle? textStyle;
  LineWithTextOnRow({
    Key? key,
    required String text,
    this.lineSize = const Size(3, 20),
    this.lineColor,
    this.textStyle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.lineMargin,
  })  : textSpan = TextSpan(text: text),
        super(key: key);

  const LineWithTextOnRow.rich({
    required this.textSpan,
    Key? key,
    this.lineSize = const Size(3, 20),
    this.lineColor,
    this.textStyle,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.lineMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Container(
          margin: lineMargin,
          height: lineSize.height,
          width: lineSize.width,
          color: lineColor ?? Theme.of(context).colorScheme.primary,
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 3),
            child: Text.rich(
              textSpan,
              style: textStyle ?? Theme.of(context).textTheme.headline6,
            ),
          ),
        ),
      ],
    );
  }
}
