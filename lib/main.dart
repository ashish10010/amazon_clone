import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/constants/router.dart';
import 'package:amazon_clone/features/auth/presentation/auth_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amazon Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        scaffoldBackgroundColor: GlobalVariables.greyBackgroundCOlor,
        appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: AuthPage(),
    );
  }
}
