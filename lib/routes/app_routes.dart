import 'package:doors/features/splash_screen/screens/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
  }
  assert(false, 'Need to implement ${settings.name}');
  return null;
}
