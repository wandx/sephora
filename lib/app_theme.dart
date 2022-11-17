import 'package:flutter/material.dart';

class AppTheme {
  /// Colors
  static const primary = Color(0xFF2F82FF);
  static const background = Color(0xFFF3F7FD);
  static const inputBorderColor = Color(0xFF98C1FF);
  static const inputBorderErrorColor = Colors.red;
  static const gray = Color(0xFF97A5C9);

  /// Button
  static const buttonRadius = 10.0;

  /// Screen
  static const mainPadding = 20.0;

  static final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(100, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(buttonRadius),
      ),
    ),
  );

  /// Input
  static const inputRadius = 10.0;
  static final inputStyle = InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(color: inputBorderErrorColor),
      borderRadius: BorderRadius.circular(inputRadius),
    ),
    filled: true,
    fillColor: Colors.white,
  );

  /// Themes
  static final lightTheme = ThemeData(
    elevatedButtonTheme: elevatedButtonTheme,
    inputDecorationTheme: inputStyle,
    primaryColor: primary,
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: primary,
      onPrimary: Colors.white,
      secondary: primary,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: background,
      onBackground: Colors.black,
      surface: Colors.white,
      onSurface: Colors.black,
    ),
  );

  static final darkTheme = ThemeData(
    elevatedButtonTheme: elevatedButtonTheme,
    inputDecorationTheme: inputStyle,
    primaryColor: primary,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: primary,
      onPrimary: Colors.white,
      secondary: primary,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      background: Colors.black,
      onBackground: Colors.white,
      surface: Colors.grey,
      onSurface: Colors.black,
    ),
  );
}
