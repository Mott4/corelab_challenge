import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  static get theme => ThemeData(
        primaryColor: AppColors.appBarColor,
        appBarTheme: const AppBarTheme(color: AppColors.appBarColor, elevation: 0),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: AppColors.appBarColor),
      );
}
