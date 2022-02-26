import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(
          child: Text('hi'),
        ),
      ],
    );
  }
}
