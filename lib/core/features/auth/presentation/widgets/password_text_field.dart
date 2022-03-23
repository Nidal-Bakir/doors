import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final Function(String? password) onSave;
  const PasswordTextField({Key? key, required this.onSave}) : super(key: key);

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
        return isPasswordCompliant(password);
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

String? isPasswordCompliant(String? password, [int minLength = 7]) {
  if (password == null || password == '') {
    return 'Enter a password';
  }
  if (password.length < minLength) {
    return 'At least 7 characters long';
  }

  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  if (hasUppercase) {
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    if (hasDigits) {
      bool hasLowercase = password.contains(RegExp(r'[a-z]'));
      if (hasLowercase) {
        bool hasSpecialCharacters =
            password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
        if (hasSpecialCharacters) {
          return null;
        } else {
          return 'At least one SpecialCharacter (\$ @ %)';
        }
      } else {
        return 'At least one lower case character';
      }
    } else {
      return 'At least one digit character';
    }
  } else {
    return 'At least one upper case character';
  }
}
