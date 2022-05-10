import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  final Function(String email) onSave;

  final String? initEmail;
  const EmailTextField({
    Key? key,
    required this.onSave,
    this.initEmail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initEmail,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enableSuggestions: true,
      keyboardType: TextInputType.emailAddress,
      validator: (email) => isValidEmail(email, context),
      onSaved:(name)=> onSave(name!),
      decoration: InputDecoration(
        hintText: context.loc.email,
      ),
    );
  }
}

String? isValidEmail(String? email, BuildContext context) {
  if (email == null || email == '') {
    return context.loc.enter_a_email;
  }
  bool emailValid = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
  if (emailValid) {
    return null;
  }
  return context.loc.not_valid_email_address;
}
