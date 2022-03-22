import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/widgets/auth_error_text.dart';
import 'package:doors/core/features/auth/presentation/widgets/create_account_text_button.dart';
import 'package:doors/core/features/auth/presentation/widgets/forgat_password.dart';
import 'package:doors/core/widgets/email_text_field.dart';
import 'package:doors/core/widgets/password_text_field.dart';
import 'package:doors/core/widgets/restart_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/login';

  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final _keyFrom = GlobalKey<FormState>();
  var _email = '';
  var _password = '';

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: SingleChildScrollView(
          child: SizedBox(
            height: _screenHeight,
            child: Column(
              children: [
                const Spacer(flex: 2),
                const Hero(tag: 'logo', child: FlutterLogo(size: 200)),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        bottom: 16.0,
                        top: 40.0,
                        left: 60.0,
                        right: 60.0,
                      ),
                      child: Form(
                        key: _keyFrom,
                        child: Column(
                          children: [
                            const AuthErrorText(),
                            EmailTextField(onSave: (email) {
                              _email = email!;
                            }),
                            const SizedBox(
                              height: 16.0,
                            ),
                            PasswordTextField(onSave: (password) {
                              _password = password!;
                            }),
                            const ForgatPassword(),
                            BlocConsumer<AuthBloc, AuthState>(
                              listener: (context, state) {
                                if (state is AuthLoggedInSuccess) {
                                  RestartApp.restart(context);
                                }
                              },
                              builder: (context, state) {
                                if (state is AuthInProgress) {
                                  return const CircularProgressIndicator
                                      .adaptive();
                                }

                                return ElevatedButton(
                                  child: Text(context.loc.login),
                                  onPressed: () => _onPressed(context),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 32.0,
                            ),
                            const CreateAccountTextButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const Spacer()
              ],
            ),
          ),
        ));
  }

  void _onPressed(BuildContext context) {
    if (_keyFrom.currentState?.validate() ?? false) {
      _keyFrom.currentState?.save();
      context.read<AuthBloc>().add(
            AuthLoginRequested(
              User(
                _email,
                _password,
                _email,
              ),
            ),
          );
    }
  }
}
