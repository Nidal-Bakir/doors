import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/subscription/presentation/screens/add_credit_card_screen.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/screens/forgat_password_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/select_account_type_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_one_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_two_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/suspended_screen.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/subscription/presentation/screens/subscription_screen.dart';
import 'package:doors/core/features/user_posts/presentation/screens/user_posts_screen.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/presentation/screens/chat_screen.dart';
import 'package:doors/features/chat/presentation/screens/chat_users_screen.dart';
import 'package:doors/features/chat/presentation/screens/image_viewer.dart';
import 'package:doors/features/favorite_posts/presentation/screens/favorite_posts_screen.dart';
import 'package:doors/features/home/presentation/screen/home_screen.dart';
import 'package:doors/features/job_application/presentation/screens/view_post_job_applications_screen.dart';
import 'package:doors/features/job_application/presentation/screens/pdf_preview_screen.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_job_post.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_one.dart';
import 'package:doors/features/manage_post/presentation/screens/create_or_edit_post_screen_part_two.dart';
import 'package:doors/features/resume_creator/presentation/screens/resume_creator_screen.dart';
import 'package:doors/features/search/presentation/screens/posts_search_screen.dart';
import 'package:doors/features/job_application/presentation/screens/congratulations_screen.dart';
import 'package:doors/features/job_application/presentation/screens/send_job_application_screen.dart';
import 'package:doors/features/settings/presentation/screens/settings_screen.dart';
import 'package:doors/features/splash_screen/screens/splash_screen.dart';
import 'package:doors/features/user_profile/presentation/screens/edit_profile_screen.dart';
import 'package:doors/features/user_profile/presentation/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SuspendedScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SuspendedScreen(),
        settings: settings,
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: settings,
      );

    case SplashScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SplashScreen(),
        settings: settings,
      );

    case LogInScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LogInScreen(),
        settings: settings,
      );

    case UserPostsScreen.routeName:
      final args = settings.arguments as Map<String, String>;
      return MaterialPageRoute(
        builder: (_) => UserPostsScreen(
          userId: args['userId']!,
          appBarLabel: args['appBarLabel']!,
          postsClassName: args['postsClassName']!,
          relationFieldName: args['relationFieldName']!,
        ),
        settings: settings,
      );

    case UserProfileScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => UserProfileScreen(
          visitedUser: settings.arguments as User,
        ),
        settings: settings,
      );

    case EditProfileScreen.routeName:
      return MaterialPageRoute<bool>(
        builder: (_) => EditProfileScreen(
          currentUserProfile: settings.arguments as User,
        ),
        settings: settings,
      );

    case SubscriptionScreen.routeName:
      return MaterialPageRoute<bool>(
        builder: (_) => SubscriptionScreen(
          currentUser: settings.arguments as User,
        ),
        settings: settings,
      );

    case ForgatPasswordScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const ForgatPasswordScreen(),
        settings: settings,
      );

    case SelectAccountTypeScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SelectAccountTypeScreen(),
        settings: settings,
      );

    case PostsSearchScreen.routeName:
      return SearchScreenFadeTransition(
        settings.arguments as PostsViewFilter,
        settings,
      );

    case SignUpPartOneScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => SignUpPartOneScreen(
          accountType: settings.arguments as AccountType,
        ),
        settings: settings,
      );

    case SignUpPartTwoScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => SignUpPartTwoScreen(
          user: settings.arguments as User,
        ),
        settings: settings,
      );

    case AddCreditCardScreen.routeName:
      final args = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (_) => AddCreditCardScreen(
          subscriptionBloc: args['subscriptionBloc'],
          selectedPlan: args['selectedPlan'],
          userId: args['userId'],
        ),
        settings: settings,
      );

    case PostScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => PostScreen(
          post: settings.arguments as Post,
        ),
        settings: settings,
      );

    case FavoritePostsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const FavoritePostsScreen(),
        settings: settings,
      );

    case CreateOrEditPostScreenPartOne.routeName:
      return MaterialPageRoute(
        builder: (_) => CreateOrEditPostScreenPartOne(
          post: settings.arguments as ServicePost?,
        ),
        settings: settings,
      );

    case CreateOrEditJobPost.routeName:
      return MaterialPageRoute(
        builder: (_) => CreateOrEditJobPost(
          jobPost: settings.arguments as JobPost?,
        ),
        settings: settings,
      );

    case CreateOrEditPostScreenPartTwo.routeName:
      return MaterialPageRoute(
        builder: (_) => CreateOrEditPostScreenPartTwo(
          post: settings.arguments as ServicePost,
        ),
        settings: settings,
      );

    case SendJobApplicationScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => SendJobApplicationScreen(
          jobPost: settings.arguments as JobPost,
        ),
        settings: settings,
      );

    case CongratulationsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const CongratulationsScreen(),
        settings: settings,
      );

    case ViewPostJobApplicationsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => ViewPostJobApplicationsScreen(
          jobPost: settings.arguments as JobPost,
        ),
        settings: settings,
      );

    case PdfPreviewScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => PdfPreviewScreen(
          pdfFile: settings.arguments as File,
        ),
        settings: settings,
      );

    case ResumeCreatorScreen.routeName:
      return MaterialPageRoute<File?>(
        builder: (_) => const ResumeCreatorScreen(),
        settings: settings,
      );

    case SettingsScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const SettingsScreen(),
        settings: settings,
      );

    case ChatUsersScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const ChatUsersScreen(),
        settings: settings,
      );

    case ChatScreen.routeName:
      return ChatScreenSlideTransition(
        settings.arguments as ChatUserInfo,
        settings,
      );

    case ImageViewer.routeName:
      return MaterialPageRoute(
        builder: (_) => ImageViewer(
          imageFile: settings.arguments as File,
        ),
        settings: settings,
      );
  }

  assert(false, 'Need to implement ${settings.name}');
  return null;
}

class SearchScreenFadeTransition extends MaterialPageRoute {
  final PostsViewFilter postsTypeToSearch;
  SearchScreenFadeTransition(this.postsTypeToSearch, RouteSettings settings)
      : super(
          builder: (_) => PostsSearchScreen(
            postsTypeToSearch: postsTypeToSearch,
          ),
          settings: settings,
        );
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(opacity: animation, child: child);
  }
}

class ChatScreenSlideTransition extends MaterialPageRoute {
  final ChatUserInfo chatUserInfo;
  ChatScreenSlideTransition(this.chatUserInfo, RouteSettings settings)
      : super(
          builder: (_) => ChatScreen(chatUser: chatUserInfo),
          settings: settings,
        );
  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    final _pageSlideTransition = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(animation);
    return SlideTransition(position: _pageSlideTransition, child: child);
  }
}
