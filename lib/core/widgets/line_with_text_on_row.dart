import 'package:flutter/material.dart';

class LineWithTextOnRow extends StatelessWidget {
  final Size lineSize;
  final Color? lineColor;
  final String text;
  final TextStyle? textStyle;
  const LineWithTextOnRow({
    Key? key,
    required this.text,
    this.lineSize = const Size(3, 20),
    this.lineColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: lineSize.height,
          width: lineSize.width,
          color: lineColor ?? Theme.of(context).colorScheme.primary,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(
            text,
            style: textStyle ?? Theme.of(context).textTheme.headline6,
          ),
        ),
      ],
    );
  }
}