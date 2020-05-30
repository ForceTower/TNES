import 'package:flutter/material.dart';

final lightTheme = ThemeData(
    fontFamily: 'Product',
    backgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    colorScheme: ColorScheme(
        surface: Colors.white,
        background: Colors.white,
        primary: Color(0xFF00a1e0),
        secondary: Color(0xFFFFC107),
        error: Colors.redAccent,
        onBackground: Colors.black,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        primaryVariant: Color(0xFF007bb9),
        onSurface: Colors.black,
        secondaryVariant: Color(0xFFff6c00),
        brightness: Brightness.light
    ),
    snackBarTheme: SnackBarThemeData(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))
        ),
        behavior: SnackBarBehavior.floating
    )
);

final darkTheme = ThemeData(
  fontFamily: 'Product',
  backgroundColor: Color(0xFF1A1A1A),
  primarySwatch: Colors.blue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: ColorScheme(
      surface: Color(0xFF1A1A1A),
      background: Color(0xFF272727),
      primary: Color(0xFF00a1e0),
      secondary: Color(0xFFFFC107),
      error: Colors.redAccent,
      onBackground: Colors.white,
      onError: Colors.black,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      primaryVariant: Color(0xFF007bb9),
      onSurface: Colors.black,
      secondaryVariant: Color(0xFFff6c00),
      brightness: Brightness.dark
  ),
  snackBarTheme: SnackBarThemeData(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(4))
      ),
      behavior: SnackBarBehavior.floating
  ),
);