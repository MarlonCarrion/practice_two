import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightBlueAccent;

  static final ThemeData ligthTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 10,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary, elevation: 5),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary, shape: const StadiumBorder(), elevation: 2)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
