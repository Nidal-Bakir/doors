import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/widgets/password_text_field.dart';
import 'package:flutter/material.dart';

class PasswordWithConfirmation extends StatefulWidget {
  final Function(String? password) onSave;
  final double heightBetweenTextFormFields;
  const PasswordWithConfirmation(
      {Key? key, required this.onSave, this.heightBetweenTextFormFields = 16})
      : super(key: key);

  @override
  State<PasswordWithConfirmation> createState() =>
      _PasswordWithConfirmationState();
}

class _PasswordWithConfirmationState extends State<PasswordWithConfirmation> {
  var _obscureText = true;
  var _obscureText2 = true;
  var _password1 = '';
  var _password2 = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (password1) {
            _password1 = password1 ?? '';
            return isPasswordCompliantAndEqualToPassword2(
                password1, _password2, context);
          },
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
        ),
        SizedBox(
          height: widget.heightBetweenTextFormFields,
        ),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (password2) {
            _password2 = password2 ?? '';
            return isPasswordCompliantAndEqualToPassword2(
                password2, _password1, context);
          },
          onSaved: widget.onSave,
          keyboardType: TextInputType.visiblePassword,
          obscureText: _obscureText2,
          decoration: InputDecoration(
            hintText: context.loc.re_password,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText2 = !_obscureText2;
                });
              },
              icon: Icon(
                _obscureText2
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String? isPasswordCompliantAndEqualToPassword2(
      String? password1, String? password2, BuildContext context,
      [int minLength = 7]) {
    final _isValidPassword = isPasswordCompliant(password1, context);
    if (_isValidPassword == null) {
      if (password1 != password2) {
        return context.loc.the_tow_passwords_not_match_each_other;
      } else {
        return null;
      }
    } else {
      return _isValidPassword;
    }
  }
}
