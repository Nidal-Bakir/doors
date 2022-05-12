import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/screens/forgat_password_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/select_account_type_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_one_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_two_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/suspended_screen.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:doors/core/features/user_posts/presentation/screens/user_posts_screen.dart';
import 'package:doors/features/favorite_posts/presentation/screens/favorite_posts_screen.dart';
import 'package:doors/features/home/presentation/screen/home_screen.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_one.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_two.dart';
import 'package:doors/features/search/posts_search/presentation/screens/posts_search_screen.dart';
import 'package:doors/features/splash_screen/screens/splash_screen.dart';
import 'package:doors/features/user_profile/presentation/screens/edit_profile_screen.dart';
import 'package:doors/features/user_profile/presentation/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SuspendedScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SuspendedScreen());

    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => HomeScreen());

    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplashScreen());

    case LogInScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LogInScreen());

    case UserPostsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => UserPostsScreen(
          userId: settings.arguments as String,
        ),
      );

    case UserProfileScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => UserProfileScreen(
          visitedUser: settings.arguments as User,
        ),
      );

    case EditProfileScreen.routeName:
      return MaterialPageRoute<bool>(
        builder: (_) => EditProfileScreen(
          currentUserProfile: settings.arguments as User,
        ),
      );

    case SubscriptionScreen.routeName:
      return MaterialPageRoute<bool>(
        builder: (_) => SubscriptionScreen(
          currentUser: settings.arguments as User,
        ),
      );

    case ForgatPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgatPasswordScreen());

    case SelectAccountTypeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SelectAccountTypeScreen());

    case PostsSearchScreen.routeName:
      return SearchScreenFadeTransition();

    case SignUpPartOneScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => SignUpPartOneScreen(
          accountType: settings.arguments as AccountType,
        ),
      );

    case SignUpPartTwoScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => SignUpPartTwoScreen(
          user: settings.arguments as User,
        ),
      );

    case PostScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => PostScreen(
          post: settings.arguments as Post,
        ),
      );

    case FavoritePostsScreen.routeName:
      return MaterialPageRoute(builder: (_) => const FavoritePostsScreen());

    case CreateOrEditPostScreenPartOne.routeName:
      return MaterialPageRoute(
        builder: (_) => CreateOrEditPostScreenPartOne(
          post: settings.arguments as Post?,
        ),
      );

    case CreateOrEditPostScreenPartTwo.routeName:
      return MaterialPageRoute(
        builder: (_) => CreateOrEditPostScreenPartTwo(
          post: settings.arguments as Post,
        ),
      );
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}

class SearchScreenFadeTransition extends MaterialPageRoute {
  SearchScreenFadeTransition()
      : super(builder: (_) => const PostsSearchScreen());
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}
