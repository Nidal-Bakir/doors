import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  final Color? indicatorColor;
  const LoadingIndicator({Key? key, this.indicatorColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: indicatorColor,
    );
  }
}
