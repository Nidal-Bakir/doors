import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/user_profile/presentation/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class MenuProfileInfo extends StatelessWidget {
  final User currentUser;
  const MenuProfileInfo({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: () {
        ZoomDrawer.of(context)?.close();
        if (openLogInScreenToNotLoggedInUser(context)) {
          return;
        }
        Navigator.of(context).pushNamed(
          UserProfileScreen.routeName,
          arguments: currentUser,
        );
      },
      child: OverflowBar(
        overflowSpacing: 8,
        children: [
          CircularProfileImage(
            url: currentUser.profileImage?.url,
            height: 70,
            width: 70,
          ),
          const SizedBox(
            width: 8,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (!currentUser.isAnonymousAccount &&
                        currentUser.isSubscribed)
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.black,
                        ),
                        child: Image.asset(
                          'assets/icons/crown-king.png',
                          width: 15,
                          height: 15,
                        ),
                      ),
                    Text(
                      currentUser.isAnonymousAccount
                          ? context.loc.guest
                          : currentUser.name,
                      style: !currentUser.isSubscribed
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
                if (!currentUser.isAnonymousAccount && currentUser.isSubscribed)
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
                if (!currentUser.isSubscribed && currentUser.isCompanyAccount)
                  ElevatedButton(
                    onPressed: () {
                      ZoomDrawer.of(context)?.close();
                      if (openLogInScreenToNotLoggedInUser(context)) {
                        return;
                      }
                      Navigator.of(context).pushNamed(
                        SubscriptionScreen.routeName,
                        arguments: currentUser,
                      );
                    },
                    child: Text(
                      currentUser.isAnonymousAccount ||
                              currentUser.accountType == AccountType.user
                          ? context.loc.get_promotion
                          : context.loc.subscribe,
                      style: _textTheme.subtitle2?.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
