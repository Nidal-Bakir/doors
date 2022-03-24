import 'dart:developer';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/widgets/email_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/name_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/password_with_confirmation.dart';
import 'package:doors/core/features/auth/presentation/widgets/phone_number_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/title_with_under_line_in_the_end.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUpPartOneScreen extends StatefulWidget {
  final AccountType accountType;
  static const routeName = '/sign_up_part_one';

  const SignUpPartOneScreen({Key? key, required this.accountType})
      : super(key: key);

  @override
  State<SignUpPartOneScreen> createState() => _SignUpPartOneScreenState();
}

class _SignUpPartOneScreenState extends State<SignUpPartOneScreen> {
  final _keyFrom = GlobalKey<FormState>();
  var _email = '';
  var _password = '';
  var _name = '';
  PhoneNumber? _phoneNamer;

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    final _screenHeight = _mediaQuery.size.height - _mediaQuery.viewPadding.top;

    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          body: SingleChildScrollView(
            child: SizedBox(
              height: _screenHeight,
              child: Hero(
                tag: 'card',
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 40.0,
                      ),
                      child: Form(
                        key: _keyFrom,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.person_outline_rounded,
                                  size: 50,
                                ),
                                TitleWithUnderLineInTheEnd(
                                  label: context.loc.sign_up,
                                  numberOfUnderLinedChars: 2,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            NameTextField(
                              onSave: (name) {
                                _name = name!;
                              },
                            ),
                            const _SizedBox16H(),
                            EmailTextField(onSave: (email) {
                              _email = email!;
                            }),
                            const _SizedBox16H(),
                            PasswordWithConfirmation(
                              onSave: (String? password) {
                                _password = password!;
                              },
                            ),
                            const _SizedBox16H(),
                            PhoneNumberTextField(
                              onSave: (phoneNumber) {
                                _phoneNamer = phoneNumber;
                              },
                              onUpdate: (phoneNumber) {
                                _phoneNamer = phoneNumber;
                              },
                            ),
                            const Spacer(),
                            ElevatedButton(
                              child: Text(context.loc.next),
                              onPressed: () => _onPressed(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();

      final _user = User(_email, _password, _email);
      _user.name = _name;
      _user.accountType = widget.accountType;
      _setUserPhoneNumber(_user);
    }
  }

  void _setUserPhoneNumber(User _user) {
    if (_phoneNamer != null &&
        _phoneNamer!.phoneNumber != null &&
        _phoneNamer!.phoneNumber!.isNotEmpty) {
      _user.phoneNumber = _phoneNamer.toString();
    }
  }
}

class _SizedBox16H extends StatelessWidget {
  const _SizedBox16H({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16.0,
    );
  }
}
