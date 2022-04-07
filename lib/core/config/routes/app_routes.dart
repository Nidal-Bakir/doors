import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/screens/forgat_password_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/select_account_type_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_one_screen.dart';
import 'package:doors/core/features/auth/presentation/screens/sign_up_part_two_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    // case SplashScreen.routeName:
    // return MaterialPageRoute(builder: (_) => const SplashScreen());
    // case LogInScreen.routeName:
    case '/':
      return MaterialPageRoute(builder: (_) => const LogInScreen());
    case ForgatPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgatPasswordScreen());
    case SelectAccountTypeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SelectAccountTypeScreen());
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
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
