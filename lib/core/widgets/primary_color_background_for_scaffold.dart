import 'package:flutter/material.dart';

class PrimaryColorBackgroundForScaffold extends StatelessWidget {
  final Widget scaffoldWidget;
  const PrimaryColorBackgroundForScaffold({
    Key? key,
    required this.scaffoldWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _colorScheme = Theme.of(context).colorScheme;
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: _colorScheme.surface,
          ),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: _colorScheme.primary,
          ),
        ),
        scaffoldWidget
      ],
    );
  }
}
