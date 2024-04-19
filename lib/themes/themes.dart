import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:phonepe_ui/themes/colorscheme.dart';

class ThemeController extends GetxController {
  ThemeMode mode = ThemeMode.system;

  ThemeData themeLight = ThemeData().copyWith(
    colorScheme: kColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.primary,
    ),
    scaffoldBackgroundColor: kColorScheme.secondary,
    cardTheme: const CardTheme().copyWith(
      color: kColorScheme.secondaryContainer,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kColorScheme.primaryContainer,
      ),
    ),
    textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          color: kColorScheme.onSecondaryContainer,
          fontSize: 20,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: kColorScheme.onSecondaryContainer,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: kColorScheme.onSecondaryContainer,
        )),
    iconTheme: IconThemeData(color: kColorScheme.onPrimary),
  );

  ThemeData themeDark = ThemeData.dark().copyWith(
    colorScheme: darkColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: darkColorScheme.primary,
    ),
    scaffoldBackgroundColor: kColorScheme.secondary,
    cardTheme: const CardTheme().copyWith(
      color: darkColorScheme.secondaryContainer,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColorScheme.primaryContainer,
        foregroundColor: darkColorScheme.onPrimaryContainer,
      ),
    ),
  );
}
