import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/features/block/presentation/managers/bloc/user_block_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> showBlockDialog(BuildContext context, String remoteUserId) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocProvider<UserBlockBloc>(
        create: (context) => GetIt.I.get<UserBlockBloc>(),
        child: Builder(
          builder: (context) {
            return BlocListener<AuthBloc, AuthState>(
              listenWhen: (previous, current) =>
                  current is AuthCurrentUpdatedUserLoadSuccess ||
                  current is AuthLoadFailure,
              listener: (context, state) {
                Navigator.of(context).pop();
              },
              child: BlocConsumer<UserBlockBloc, UserBlockState>(
                listenWhen: (previous, current) =>
                    current is UserBlockBlockSuccess,
                listener: (context, state) {
                  context
                      .read<AuthBloc>()
                      .add(const AuthGetUpdatedUserDataRequested());

                  showSuccussSnackBar(
                    context,
                    context.loc.user_blocked_successfully,
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      return AlertDialog(
                        titleTextStyle: Theme.of(context).textTheme.headline5,
                        title: Center(
                          child: Text(
                            context.loc.block_user,
                          ),
                        ),
                        contentTextStyle: Theme.of(context).textTheme.headline6,
                        content: Text(
                          context.loc.do_you_want_to_block_this_user,
                        ),
                        actions: [
                          TextButton(
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  foregroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(context.loc.cancel),
                          ),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<UserBlockBloc>()
                                  .add(UserBlockBlocked(remoteUserId));
                            },
                            child: Text(
                              context.loc.block,
                            ),
                          )
                        ],
                      );
                    },
                    blockFailure: (error) {
                      return AlertDialog(
                        titleTextStyle: Theme.of(context).textTheme.headline5,
                        title: Center(
                          child: Text(
                            context.loc.block_user,
                          ),
                        ),
                        contentTextStyle: Theme.of(context).textTheme.headline6,
                        content: Text(
                          context.loc.error_while_blocking_the_user +
                              '\n${error.getLocalMessageError(context)}',
                        ),
                        actions: [
                          TextButton(
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  foregroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(context.loc.cancel),
                          ),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<UserBlockBloc>()
                                  .add(UserBlockBlocked(remoteUserId));
                            },
                            child: Text(
                              context.loc.retry,
                            ),
                          )
                        ],
                      );
                    },
                    blockSuccess: () {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    },
                    inProgress: () {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            );
          },
        ),
      );
    },
  );
}

Future<void> showUnblockDialog(BuildContext context, String remoteUserId) {
  return showDialog(
    context: context,
    builder: (context) {
      return BlocProvider<UserBlockBloc>(
        create: (context) => GetIt.I.get<UserBlockBloc>(),
        child: Builder(
          builder: (context) {
            return BlocListener<AuthBloc, AuthState>(
              listenWhen: (previous, current) =>
                  current is AuthCurrentUpdatedUserLoadSuccess ||
                  current is AuthLoadFailure,
              listener: (context, state) {
                Navigator.of(context).pop();
              },
              child: BlocConsumer<UserBlockBloc, UserBlockState>(
                listenWhen: (previous, current) =>
                    current is UserBlockUnblockSuccess,
                listener: (context, state) {
                  context
                      .read<AuthBloc>()
                      .add(const AuthGetUpdatedUserDataRequested());

                  showSuccussSnackBar(
                    context,
                    context.loc.user_unblocked_successfully,
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () {
                      return AlertDialog(
                        titleTextStyle: Theme.of(context).textTheme.headline5,
                        title: Center(
                          child: Text(
                            context.loc.unblock_user,
                          ),
                        ),
                        contentTextStyle: Theme.of(context).textTheme.headline6,
                        content: Text(
                          context.loc.do_you_want_to_unblock_this_user,
                        ),
                        actions: [
                          TextButton(
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  foregroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(context.loc.cancel),
                          ),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<UserBlockBloc>()
                                  .add(UserBlockUnblocked(remoteUserId));
                            },
                            child: Text(
                              context.loc.unblock,
                            ),
                          )
                        ],
                      );
                    },
                    unblockFailure: (error) {
                      return AlertDialog(
                        titleTextStyle: Theme.of(context).textTheme.headline5,
                        title: Center(
                          child: Text(
                            context.loc.unblock_user,
                          ),
                        ),
                        contentTextStyle: Theme.of(context).textTheme.headline6,
                        content: Text(
                          context.loc.error_while_unblocking_the_user +
                              '\n${error.getLocalMessageError(context)}',
                        ),
                        actions: [
                          TextButton(
                            style: Theme.of(context)
                                .textButtonTheme
                                .style
                                ?.copyWith(
                                  foregroundColor: MaterialStateProperty.all(
                                    Colors.grey,
                                  ),
                                ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(context.loc.cancel),
                          ),
                          TextButton(
                            onPressed: () {
                              context
                                  .read<UserBlockBloc>()
                                  .add(UserBlockUnblocked(remoteUserId));
                            },
                            child: Text(
                              context.loc.retry,
                            ),
                          )
                        ],
                      );
                    },
                    unblockSuccess: () {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    },
                    inProgress: () {
                      return const Center(
                        child: LoadingIndicator(),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            );
          },
        ),
      );
    },
  );
}
