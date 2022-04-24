import 'dart:developer';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/favorite_posts/presentation/screens/favorite_posts_screen.dart';
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
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OverflowBar(
                  overflowSpacing: 8,
                  children: [
                    CircularProfileImage(
                      profileImage: _currentUser.profileImage,
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            if (!_currentUser.isAnonymousAccount &&
                                _currentUser.isSubscribed)
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.black,
                                ),
                                child: Image.asset(
                                  'assets/icons/crown-king.png',
                                  width: 15,
                                  height: 15,
                                ),
                              ),
                            Text(
                              _currentUser.isAnonymousAccount
                                  ? context.loc.guest
                                  : _currentUser.name,
                              style: !_currentUser.isSubscribed
                                  ? _textTheme.headline5
                                  : _textTheme.headline5?.copyWith(
                                      shadows: [
                                        const Shadow(
                                          color: Colors.black,
                                          offset: Offset(0, -5),
                                        )
                                      ],
                                      color: Colors.transparent,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.black,
                                      decorationThickness: 4,
                                    ),
                            ),
                          ],
                        ),
                        if (!_currentUser.isAnonymousAccount &&
                            _currentUser.isSubscribed)
                          Text(
                            context.loc.you_are_a_king,
                            style: _textTheme.bodyText2?.copyWith(
                              shadows: [
                                const Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, -5),
                                )
                              ],
                              color: Colors.transparent,
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                if (!_currentUser.isSubscribed)
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      _currentUser.accountType == AccountType.company
                          ? context.loc.subscribe
                          : context.loc.get_promotion,
                      style: _textTheme.subtitle2
                          ?.copyWith(color: _theme.colorScheme.primary),
                    ),
                  ),
                const SizedBox(
                  height: 60,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton.icon(
                            icon: const Icon(Icons.favorite_border_rounded),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {
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
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {},
                            label: Text(
                              context.loc.add_service,
                              style: _textTheme.headline6,
                            ),
                          ),
                          if (_currentUser.accountType == AccountType.company)
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
                              onPressed: () {},
                              label: Text(
                                context.loc.add_jop_offer,
                                style: _textTheme.headline6,
                              ),
                            ),
                          TextButton.icon(
                            icon: const Icon(Icons.manage_accounts_outlined),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {},
                            label: Text(
                              context.loc.your_service,
                              style: _textTheme.headline6,
                            ),
                          ),
                          TextButton.icon(
                            icon: const Icon(Icons.privacy_tip_outlined),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {},
                            label: Text(
                              context.loc.privacy_police,
                              style: _textTheme.headline6,
                            ),
                          ),
                          TextButton.icon(
                            icon: const Icon(Icons.tune_rounded),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {},
                            label: Text(
                              context.loc.settings,
                              style: _textTheme.headline6,
                            ),
                          ),
                          TextButton.icon(
                            icon: const Icon(Icons.info_outline_rounded),
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              overlayColor: MaterialStateProperty.all(
                                  Colors.white.withOpacity(0.3)),
                            ),
                            onPressed: () {},
                            label: Text(
                              context.loc.about,
                              style: _textTheme.headline6,
                            ),
                          ),
                        ],
                      ),
                      TextButton.icon(
                        icon: const Icon(Icons.logout_rounded),
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          overlayColor: MaterialStateProperty.all(
                              Colors.white.withOpacity(0.3)),
                        ),
                        onPressed: () {},
                        label: Text(
                          context.loc.sign_out,
                          style: _textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
