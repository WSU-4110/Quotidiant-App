import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Light Theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.grey[100],
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
      shape: RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.primary,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    appBarTheme: AppBarTheme(
      color: Colors.grey[850],
    ),
    scaffoldBackgroundColor: Colors.grey[900],
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.grey[850],
      shape: const RoundedRectangleBorder(),
      textTheme: ButtonTextTheme.primary,
    ),
  );
}
