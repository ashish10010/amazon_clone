import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = Colors.black38]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 2,
      ),
    );
  }

  static final theme = ThemeData(
    colorScheme: ColorScheme.light(
      primary: GlobalVariables.secondaryColor,
    ),
    scaffoldBackgroundColor: GlobalVariables.greyBackgroundCOlor,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: EdgeInsets.all(10),
        border: _border(),
        enabledBorder: _border(),
        focusedBorder: _border(
          GlobalVariables.greyBackgroundCOlor,
        ),
        errorBorder: _border(
          GlobalVariables.errorColor,
        )),
    useMaterial3: true,
  );
}
