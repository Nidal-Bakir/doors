import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SafeArea(
          child: SizedBox.expand(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 1),
            Image.asset('assets/images/check.png', width: 320),
            BlocConsumer<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state is AuthLoadFailure) {
                  return Column(
                    children: [
                      Text(
                        state.exception.getLocalMessageError(context),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      TextButton.icon(
                        icon: const Icon(
                          Icons.replay_rounded,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          context
                              .read<AuthBloc>()
                              .add(const AuthCurrentUserLoaded());
                        },
                        label: Text(
                          context.loc.retry,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      )
                    ],
                  );
                }
                return const SizedBox.shrink();
              },
              listener: (context, state) {
                if (state is AuthCurrentUpdatedUserLoadSuccess) {
                  Navigator.of(context)
                      .pushReplacementNamed(LogInScreen.routeName);
                }
                if (state is AuthLoadFailure) {
                  showErrorSnackBar(
                      context, state.exception.getLocalMessageError(context));
                }
              },
            ),
            const Spacer(
              flex: 2,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text('DOORS company 2022 all right reserved '),
            ),
          ],
        ),
      )),
    );
  }
}
