import 'package:flutter/material.dart';
import 'package:islami_app_a/app_colors.dart';

class MyThemeData {
  /// light and dark mode.
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
   bottomNavigationBarTheme: BottomNavigationBarThemeData(
     showSelectedLabels: true,
     showUnselectedLabels: false,
     unselectedItemColor: AppColors.whiteColor,
     selectedItemColor: AppColors.blackColor,
   ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
