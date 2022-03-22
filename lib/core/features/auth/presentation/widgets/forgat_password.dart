import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/screens/forgat_password_screen.dart';
import 'package:flutter/material.dart';

class ForgatPassword extends StatelessWidget {
  const ForgatPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushNamed(ForgatPasswordScreen.routeName);
        },
        child: Text(context.loc.forgat_password,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            )),
      ),
    );
  }
}
