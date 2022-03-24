import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Function(String? password) onSave;

  const PasswordTextField({
    Key? key,
    required this.onSave,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (password) {
        return isPasswordCompliant(password, context);
      },
      onSaved: widget.onSave,
      keyboardType: TextInputType.visiblePassword,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: context.loc.password,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          icon: Icon(
            _obscureText
                ? Icons.visibility_rounded
                : Icons.visibility_off_rounded,
          ),
        ),
      ),
    );
  }
}

String? isPasswordCompliant(String? password1, BuildContext context,
    [int minLength = 7]) {
  if (password1 == null || password1 == '') {
    return context.loc.enter_password;
  }

  if (password1.length < minLength) {
    return context.loc.at_least_7_chars;
  }

  bool hasUppercase = password1.contains(RegExp(r'[A-Z]'));
  if (!hasUppercase) {
    return context.loc.at_least_one_upper;
  }

  bool hasDigits = password1.contains(RegExp(r'[0-9]'));
  if (!hasDigits) {
    return context.loc.at_least_one_digit;
  }
  
  bool hasLowercase = password1.contains(RegExp(r'[a-z]'));
  if (!hasLowercase) {
    return context.loc.at_least_one_lower;
  }

  bool hasSpecialCharacters =
      password1.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  if (!hasSpecialCharacters) {
    return context.loc.at_least_one_special;
  }

  return null;
}
