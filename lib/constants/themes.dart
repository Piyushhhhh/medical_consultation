import 'package:flutter/material.dart';
import 'package:medical_consultation/constants/colors.dart';

ThemeData themedata = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary(),
      onPrimary: AppColors.primary(),
      secondary: AppColors.fadeText(),
      onSecondary: AppColors.positive(),
      error: AppColors.negative(),
      onError: AppColors.negative(),
      background: AppColors.background(),
      onBackground: AppColors.background(),
      surface: AppColors.accent(),
      onSurface: AppColors.negative()),
  tabBarTheme: TabBarTheme(
    indicatorColor: Colors.transparent,
    unselectedLabelColor: AppColors.fadeText(),
    labelColor: AppColors.primary(),
  ),
);
