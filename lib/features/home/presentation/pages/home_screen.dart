import 'package:amazon_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScr extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => HomeScr());
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      body: Center(
        child: Text(
          user.toJson(),
        ),
      ),
    );
  }
}
