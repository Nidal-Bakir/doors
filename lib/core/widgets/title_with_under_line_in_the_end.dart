import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TitleWithUnderLineInTheEnd extends StatelessWidget {
  final String label;
  final int numberOfUnderLinedChars;
  const TitleWithUnderLineInTheEnd({
    Key? key,
    required this.label,
    required this.numberOfUnderLinedChars,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        AutoSizeText(
          label, 
          maxLines: 1,
          style: _theme.textTheme.headline4,
          minFontSize: _theme.textTheme.headline6!.fontSize!,
        ),
        Positioned.directional(
          textDirection: Directionality.of(context),
          bottom: 0.0,
          end: 0.0,
          child: Container(
            alignment: Alignment.bottomRight,
            height: 3,
            width: numberOfUnderLinedChars * 15,
            color: _theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
