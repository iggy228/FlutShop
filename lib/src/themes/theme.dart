import 'package:flut_shop/src/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  fontFamily: FontFamily.nunitoSans,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  colorScheme: const ColorScheme.light(
    primary: Color(0xff227C9D),
  ),
  textTheme: const TextTheme(
    headline2: TextStyle(
      fontFamily: FontFamily.permanentMarker,
      color: Colors.black,
      letterSpacing: 2,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: const BorderSide(color: Color(0xff227C9D)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
);
