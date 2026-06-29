import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

abstract final class AppTheme {

  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),

      headlineMedium: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),

      bodyMedium: TextStyle(
        color: Colors.grey,
        fontSize: 16,
      ),
    ),
  );
}