import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:doors/core/features/user_posts/presentation/screens/user_posts_screen.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/features/favorite_posts/presentation/screens/favorite_posts_screen.dart';
import 'package:doors/features/home/presentation/widgets/menu_profile_info.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_job_post.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_one.dart';
import 'package:doors/features/settings/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    final _textTheme = _theme.textTheme;
    final _authBloc = context.read<AuthBloc>();
    return SafeArea(
      child: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        buildWhen: (previous, current) =>
            current is AuthCurrentUpdatedUserLoadSuccess,
        builder: (context, state) {
          final _currentUser = _authBloc.getCurrentUser();
          if (_currentUser == null) {
            return const SizedBox.shrink();
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuProfileInfo(currentUser: _currentUser),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.favorite_border_rounded),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      if (openLogInScreenToNotLoggedInUser(context)) {
                        return;
                      }

                      Navigator.of(context)
                          .pushNamed(FavoritePostsScreen.routeName);
                      ZoomDrawer.of(context)?.close();
                    },
                    label: Text(
                      context.loc.favorite,
                      style: _textTheme.headline6,
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.add_rounded),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      if (openLogInScreenToNotLoggedInUser(context)) {
                        return;
                      }
                      Navigator.of(context)
                          .pushNamed(CreateOrEditPostScreenPartOne.routeName);
                    },
                    label: Text(
                      context.loc.add_service,
                      style: _textTheme.headline6,
                    ),
                  ),
                  if (!_currentUser.isAnonymousAccount &&
                      _currentUser.accountType == AccountType.company)
                    TextButton.icon(
                      icon: const Icon(
                        Icons.work_outline_rounded,
                      ),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        overlayColor: MaterialStateProperty.all(
                            Colors.white.withOpacity(0.3)),
                      ),
                      onPressed: () {
                        ZoomDrawer.of(context)?.close();
                        if (openLogInScreenToNotLoggedInUser(context)) {
                          return;
                        }
                        if (_currentUser.isCompanyAccount &&
                            !_currentUser.isSubscribed) {
                          Navigator.of(context).pushNamed(
                            SubscriptionScreen.routeName,
                            arguments: _currentUser,
                          );
                          return;
                        }
                        Navigator.of(context).pushNamed(
                          CreateOrEditJobPost.routeName,
                        );
                      },
                      label: Text(
                        context.loc.add_jop_offer,
                        style: _textTheme.headline6,
                      ),
                    ),
                  if (!_currentUser.isAnonymousAccount &&
                      _currentUser.accountType == AccountType.company)
                    TextButton.icon(
                      icon: const Icon(Icons.workspace_premium_outlined),
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        overlayColor: MaterialStateProperty.all(
                            Colors.white.withOpacity(0.3)),
                      ),
                      onPressed: () {
                        ZoomDrawer.of(context)?.close();
                        if (openLogInScreenToNotLoggedInUser(context)) {
                          return;
                        }
                        Navigator.of(context).pushNamed(
                          UserPostsScreen.routeName,
                          arguments: {
                            'userId': _currentUser.userId,
                            'appBarLabel': context.loc.my_jop_offers,
                            'postsClassName': JobPost.keyClassName,
                            'relationFieldName': User.keyCompanyJobPosts,
                          },
                        );
                      },
                      label: Text(
                        context.loc.my_jop_offers,
                        style: _textTheme.headline6,
                      ),
                    ),
                  TextButton.icon(
                    icon: const Icon(Icons.manage_accounts_outlined),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      if (openLogInScreenToNotLoggedInUser(context)) {
                        return;
                      }
                      Navigator.of(context).pushNamed(
                        UserPostsScreen.routeName,
                        arguments: {
                          'userId': _currentUser.userId,
                          'appBarLabel': context.loc.my_service,
                          'postsClassName': ServicePost.keyClassName,
                          'relationFieldName': User.keyUserServicePosts,
                        },
                      );
                    },
                    label: Text(
                      context.loc.my_service,
                      style: _textTheme.headline6,
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.privacy_tip_outlined),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                    },
                    label: Text(
                      context.loc.privacy_police,
                      style: _textTheme.headline6,
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.tune_rounded),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      Navigator.of(context).pushNamed(SettingsScreen.routeName);
                    },
                    label: Text(
                      context.loc.settings,
                      style: _textTheme.headline6,
                    ),
                  ),
                  TextButton.icon(
                    icon: const Icon(Icons.info_outline_rounded),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                    },
                    label: Text(
                      context.loc.about,
                      style: _textTheme.headline6,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                    icon: Icon(_currentUser.isAnonymousAccount
                        ? Icons.login_rounded
                        : Icons.logout_rounded),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      overlayColor: MaterialStateProperty.all(
                          Colors.white.withOpacity(0.3)),
                    ),
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      if (_currentUser.isAnonymousAccount) {
                        Navigator.of(context).pushNamed(LogInScreen.routeName);
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return const Center(
                              child: LoadingIndicator(),
                            );
                          },
                          barrierDismissible: false,
                        );

                        context
                            .read<AuthBloc>()
                            .add(const AuthLogoutRequested());
                      }
                    },
                    label: Text(
                      _currentUser.isAnonymousAccount
                          ? context.loc.login
                          : context.loc.sign_out,
                      style: _textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
