import 'package:flutter/material.dart';
import 'package:flutter_project/shared/resource/styles/app_styles.dart';
import 'package:flutter_project/shared/resource/theme/dark/darkcolor.dart';
import 'package:flutter_project/shared/resource/theme/light/lightcolor.dart';

class AppTheme {
  AppTheme._();
  static getThemeData({required bool isLight}) {
    return ThemeData(
      useMaterial3: true,
      brightness: isLight ? Brightness.light : Brightness.dark,
      //Main Color (AppBar,Tabs..etc)

      primaryColor: isLight
          ? LightThemeColors.primaryColor
          : DarkThemeColors.primaryColor,
      primaryColorLight: isLight
          ? LightThemeColors.primaryColorLight
          : DarkThemeColors.primaryColorLight,
      primaryColorDark: isLight
          ? LightThemeColors.primaryColorDark
          : DarkThemeColors.primaryColorDark,
      scaffoldBackgroundColor: isLight
          ? LightThemeColors.scaffoldBackgroundColor
          : DarkThemeColors.scaffoldBackgroundColor,

      //Canvas Color
      canvasColor:
          isLight ? LightThemeColors.canvasColor : DarkThemeColors.canvasColor,

      //Card Background Color
      cardColor: isLight
          ? const Color.fromARGB(255, 241, 241, 241)
          : DarkThemeColors.cardColor,

      //Hint Text Color
      hintColor: isLight
          ? LightThemeColors.hintTextColor
          : DarkThemeColors.hintTextColor,

      //Divider Color
      dividerColor: isLight
          ? LightThemeColors.dividerColor
          : DarkThemeColors.dividerColor,
      //Input Decoration Theme
      inputDecorationTheme:
          AppStyles.getInputDecorationTheme(isLightTheme: isLight),

      //Text Selection Theme
      textSelectionTheme:
          AppStyles.getTextSelectionTheme(isLightTheme: isLight),

      //Progress Bar Theme
      progressIndicatorTheme:
          AppStyles.getProgessIndicatorTheme(isLightTheme: isLight),

      //AppBar Theme
      appBarTheme: AppStyles.getAppBarTheme(isLightTheme: isLight),

      //Text Theme
      textTheme: AppStyles.getTextTheme(isLightTheme: isLight),

      //Bottom Navigation Bar Theme
      bottomNavigationBarTheme:
          AppStyles.getBottomNavBarTheme(isLightTheme: isLight),

      //Elevated Button Theme
      elevatedButtonTheme:
          AppStyles.getElevatedButtonTheme(isLightTheme: isLight),

      //Icon Theme
      iconTheme: AppStyles.getIconTheme(isLightTheme: isLight),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: isLight
              ? LightThemeColors.accentColor
              : DarkThemeColors.accentColor),
    );
  }
}
