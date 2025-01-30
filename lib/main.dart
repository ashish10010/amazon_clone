import 'package:amazon_clone/constants/router.dart';
import 'package:amazon_clone/constants/theme.dart';
import 'package:amazon_clone/features/auth/presentation/pages/auth_page.dart';
import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: AppTheme.theme,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthPage(),
    );
  }
}
