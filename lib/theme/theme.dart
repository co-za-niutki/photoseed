import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(ColorScheme? dynamicScheme) {
    return ThemeData(
      fontFamily: 'SpaceGrotesk',
      colorScheme:
          dynamicScheme ?? ColorScheme.fromSeed(seedColor: Color(0x61a69fff)),
      useMaterial3: true,
    );
  }

  static ThemeData darkTheme(ColorScheme? dynamicScheme) {
    return ThemeData(
      fontFamily: 'SpaceGrotesk',
      colorScheme:
          dynamicScheme ??
          ColorScheme.fromSeed(
            seedColor: Color(0x61a69fff),
            brightness: Brightness.dark,
          ),
      useMaterial3: true,
    );
  }
}
