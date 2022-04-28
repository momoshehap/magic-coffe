import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final appThemeData = {
    // Light Theme
    AppTheme.lightTheme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: const Color(0xFF324A59),
      backgroundColor: Colors.white,
      accentColor: const Color(0xFFD8D8D8),
      iconTheme: const IconThemeData(color: Color(0xFF001934)),
      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Color(0xFF001934),
        ),
      ),

      // Text Themes
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Color(0xFF001934),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        bodyText2: TextStyle(
          color: Color(0xFFD8D8D8),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),

      // ElevatedButton Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF324A59)),
          minimumSize: MaterialStateProperty.all(const Size(350, 50)),
          shape: MaterialStateProperty.all(const StadiumBorder()),
        ),
      ),

      // Float Action Button Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color(0xFF324A59),
      ),
    ),

    // Dark Theme
    // todo  edit Dark Theme
    AppTheme.darkTheme: ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primarySwatch: Colors.pink,
      backgroundColor: Colors.black,

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.pink,
        ),
      ),

      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.pink,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        minimumSize: const Size(350, 50),
      )),
    )
  };
}

enum AppTheme {
  lightTheme,
  darkTheme,
}
