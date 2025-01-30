import 'package:amazon_clone/features/auth/presentation/pages/auth_page.dart';
import 'package:flutter/material.dart';

import '../features/home/presentation/pages/home_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthPage(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );

    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Invalid page! The page doesnot exist!'),
          ),
        ),
      );
  }
}
