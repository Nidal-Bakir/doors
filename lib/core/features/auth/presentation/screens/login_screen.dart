import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/widgets/auth_error_text.dart';
import 'package:doors/core/features/auth/presentation/widgets/create_account_text_button.dart';
import 'package:doors/core/features/auth/presentation/widgets/forgat_password_text_button.dart';
import 'package:doors/core/features/auth/presentation/widgets/email_text_field.dart';
import 'package:doors/core/features/auth/presentation/widgets/password_text_field.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
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
    final _mediaQuery = MediaQuery.of(context);
    final _screenHeight = _mediaQuery.size.height - _mediaQuery.viewPadding.top;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: _screenHeight,
            child: Column(
              children: [
                const Spacer(flex: 1),
                const Hero(tag: 'logo', child: FlutterLogo(size: 150)),
                const Spacer(),
                Hero(
                  tag: 'card',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 40.0,
                          horizontal: 40.0,
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
                              const ForgatPasswordTextButton(),
                              BlocConsumer<AuthBloc, AuthState>(
                                listener: (context, state) {
                                  if (state is AuthLoggedInSuccess) {
                                    RestartApp.restart(context);
                                  }
                                },
                                builder: (context, state) {
                                  if (state is AuthInProgress) {
                                    return const LoadingIndicator();
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
                ),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
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
