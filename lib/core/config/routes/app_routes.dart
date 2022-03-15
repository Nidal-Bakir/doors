import 'package:doors/core/features/auth/presentation/screens/login.dart';
import 'package:doors/features/splash_screen/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case LogInScreen.routeName:
      return MaterialPageRoute(builder: (_) => const LogInScreen());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
