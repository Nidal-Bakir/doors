import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/widgets/auth_error_text.dart';
import 'package:doors/core/widgets/email_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgatPasswordScreen extends StatefulWidget {
  static const routeName = '/forgat_password';

  const ForgatPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgatPasswordScreen> createState() => _ForgatPasswordScreenState();
}

class _ForgatPasswordScreenState extends State<ForgatPasswordScreen> {
  final _keyFrom = GlobalKey<FormState>();
  var _email = '';

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SingleChildScrollView(
          child: SizedBox(
            height: _screenHeight,
            child: Column(
              // direction: Axis.vertical,
              children: [
                const Spacer(flex: 1),
                const Hero(tag: 'logo', child: FlutterLogo(size: 200)),
                const SizedBox(
                  height: 32.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                        top: 16.0,
                        left: 60.0,
                        right: 60.0,
                      ),
                      child: Form(
                        key: _keyFrom,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 32.0),
                              child: Text(
                                context.loc.enter_your_address_to_rest,
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ),
                            EmailTextField(onSave: (email) {
                              _email = email!.trim();
                            }),
                            const SizedBox(height: 32.0),
                            BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                return state.maybeWhen(
                                    authPasswordResetSendSuccess: () {
                                  return Text(
                                    context
                                        .loc.we_have_sent_password_rest_email,
                                  );
                                }, authInProgress: () {
                                  return const CircularProgressIndicator
                                      .adaptive();
                                }, orElse: () {
                                  return ElevatedButton(
                                    child: Text(context.loc.reset),
                                    onPressed: () => _onPressed(context),
                                  );
                                });
                              },
                            ),
                            const AuthErrorText(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ));
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();
      context.read<AuthBloc>().add(
            AuthResetPasswordRequested(userEmail: _email),
          );
    }
  }
}
