import 'package:flutter/material.dart';
import 'theme.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      textSelectionTheme: const TextSelectionThemeData(
        selectionHandleColor: Colors.transparent,
      ),
      fontFamily: "DMSans",
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      textTheme: const TextTheme(
        titleMedium: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 16, color: secondaryColor),
        titleSmall: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 14, color: primaryColor),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 14, color: secondaryColor),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: secondaryMediumColor),
      ));
}
