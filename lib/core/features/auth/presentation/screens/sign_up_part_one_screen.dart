import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_two_screen.dart';
import 'package:doors/core/widgets/email_text_field.dart';
import 'package:doors/core/widgets/name_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/password_with_confirmation.dart';
import 'package:doors/core/widgets/phone_number_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/sign_up_headline_text_with_icon.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
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
                            SizedBox(height: 50,
                              child: SignUpHeadLineTextWithIcon(
                                accountType: widget.accountType,
                              ),
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            NameTextField(
                              hint: widget.accountType == AccountType.user
                                  ? context.loc.name
                                  : context.loc.company_name,
                              onSave: (name) {
                                _name = name;
                              },
                            ),
                            const SizedBox16H(),
                            EmailTextField(onSave: (email) {
                              _email = email;
                            }),
                            const SizedBox16H(),
                            PasswordWithConfirmation(
                              onSave: (String? password) {
                                _password = password!;
                              },
                            ),
                            const SizedBox16H(),
                            PhoneNumberTextField(
                              onSave: (phoneNumber) {
                                _phoneNamer = phoneNumber;
                              },
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 16),
                              child: ElevatedButton(
                                child: Text(context.loc.next),
                                onPressed: () => _onPressed(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();

      final _user = User(_email.trim(), _password.trim(), _email.trim());
      _user.name = _name.trim();
      _user.accountType = widget.accountType;
      _setUserPhoneNumber(_user);

      Navigator.of(context).pushNamed(
        SignUpPartTwoScreen.routeName,
        arguments: _user,
      );
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
