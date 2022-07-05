import 'package:flutter/material.dart';

class MessageSendInProgressIconWidget extends StatelessWidget {
  const MessageSendInProgressIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.watch_later_outlined,
      size: 20,
    );
  }
}
