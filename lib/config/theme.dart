import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
      primaryColor: const Color(0xFFFE3C5B),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Futura',
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 36,
        ),
        displayMedium: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        displaySmall: TextStyle(
          color: Color(0x000000),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        bodyLarge: TextStyle(
          color: Color(0x000000),
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
        bodyMedium: TextStyle(
          color: Color(0x000000),
          fontWeight: FontWeight.normal,
          fontSize: 12,
        ),
      ));
}
