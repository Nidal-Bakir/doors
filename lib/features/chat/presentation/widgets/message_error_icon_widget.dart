import 'package:flutter/material.dart';

class MessageErrorIconWidget extends StatelessWidget {
  const MessageErrorIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.error,
      size: 20,
      color: Theme.of(context).colorScheme.error,
    );
  }
}
