/// Created by Nurholis at sat 28 Oct, 2023.

import 'package:flutter/material.dart';


/// Constant value handle theme, color in apps.
class Constants {
  static String appName = "Flutter Travel";

  // Colors for theme
  static Color accentColor = const Color(0xff83D3DE);
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color darkPrimary = Colors.black;
  static Color lightAccent = Colors.blueGrey;
  static Color darkAccent = Colors.white;
  static Color lightBG = const Color(0xfffcfcff);
  static Color darkBG = Colors.black;
  static Color badgeColor = Colors.red;
  static Color white = Colors.white;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: lightAccent,
      backgroundColor: lightBG,
    ),
    scaffoldBackgroundColor: lightBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: darkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimary,
    colorScheme: ColorScheme.fromSwatch(
      backgroundColor: darkBG,
      accentColor: darkAccent,
    ),
    scaffoldBackgroundColor: darkBG,
    appBarTheme: AppBarTheme(
      elevation: 0,
      titleTextStyle: TextStyle(
        color: lightBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800
      ),
    ),
  );
}