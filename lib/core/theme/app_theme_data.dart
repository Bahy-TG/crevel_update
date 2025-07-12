import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class AppThemeData {
  static final ThemeData myThemeData = ThemeData(
    drawerTheme: DrawerThemeData(
        backgroundColor: AppColors.primaryColor
    ),
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.blackColor,
      unselectedItemColor: AppColors.whiteColor,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: AppColors.blackColor,
      ),
      bodySmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.blackColor,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        color: AppColors.blackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: AppColors.whiteColor,
      ),
     titleSmall:  TextStyle(
        fontSize: 20,
        color: AppColors.lightPrimary,
      ),
    ),
  );
}
