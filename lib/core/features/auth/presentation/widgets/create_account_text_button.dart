import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/screens/select_account_type_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateAccountTextButton extends StatefulWidget {
  const CreateAccountTextButton({Key? key}) : super(key: key);

  @override
  State<CreateAccountTextButton> createState() =>
      _CreateAccountTextButtonState();
}

class _CreateAccountTextButtonState extends State<CreateAccountTextButton> {
  late final TapGestureRecognizer _tapGestureRecognizerForCrateAccount =
      TapGestureRecognizer()..onTap = _onTap;

  @override
  void dispose() {
    super.dispose();
    _tapGestureRecognizerForCrateAccount.dispose();
  }

  void _onTap() {
    Navigator.of(context).pushNamed(SelectAccountTypeScreen.routeName);
    HapticFeedback.selectionClick();
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: context.loc.new_to_the_world_of_Doors,
          style: Theme.of(context).textTheme.bodyText2,
          children: [
            TextSpan(
              text: context.loc.create_an_account,
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
              recognizer: _tapGestureRecognizerForCrateAccount,
            )
          ]),
    );
  }
}
