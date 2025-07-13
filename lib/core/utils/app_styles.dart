import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppStyle {
  static TextStyle cardStyle = const TextStyle(
    fontSize: 23,
    color: AppColors.whiteColor,
  );
  static TextStyle titleLarge = const TextStyle(
    fontSize: 16,
    color: AppColors.whiteColor,
  );
  static TextStyle bodySmall = const TextStyle(
    fontSize: 8,
    color: AppColors.greyColor,
  );
  static TextStyle titleStyle = TextStyle(
    fontSize: 25,
    color: AppColors.lightPrimary,
  );
  static TextStyle bodyLarge = const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w300,
      color: AppColors.whiteColor,
      );
}
