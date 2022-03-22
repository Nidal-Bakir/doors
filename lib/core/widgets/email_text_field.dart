import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final Function(String? email) onSave;
  const EmailTextField({Key? key, required this.onSave}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.emailAddress,
      validator: (email) => isValidEmail(email),
      onSaved: onSave,
      decoration: InputDecoration(
        hintText: context.loc.email,
      ),
    );
  }
}

String? isValidEmail(String? email) {
  if (email == null || email == '') {
    return 'Enter a email';
  }
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  if (emailValid) {
    return null;
  }
  return 'Not valid Email address';
}
