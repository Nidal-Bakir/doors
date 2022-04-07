import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/widgets/auth_error_text.dart';
import 'package:doors/core/features/auth/presentation/widgets/email_text_field.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
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
                  const Spacer(),
                  const Hero(tag: 'logo', child: FlutterLogo(size: 150)),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Hero(
                    tag: 'card',
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 40.0, horizontal: 40.0),
                          child: Form(
                            key: _keyFrom,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 32.0),
                                  child: Text(
                                    context.loc.enter_your_address_to_rest,
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
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
                                        context.loc
                                            .we_have_sent_password_rest_email,
                                      );
                                    }, authInProgress: () {
                                      return const LoadingIndicator();
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
                  ),
                  const Spacer(),
                ],
              ),
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
