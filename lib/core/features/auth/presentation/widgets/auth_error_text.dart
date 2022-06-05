import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthErrorText extends StatelessWidget {
  const AuthErrorText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthLoadFailure) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 24.0),
            child: Text(
              state.exception.getLocalMessageError(context),
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).colorScheme.error,
                  ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
