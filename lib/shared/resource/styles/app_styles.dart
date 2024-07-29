import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/shared/resource/fonts/app_fonts.dart';
import 'package:flutter_project/shared/resource/theme/dark/darkcolor.dart';
import 'package:flutter_project/shared/resource/theme/light/lightcolor.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  AppStyles._();

  ///APPBAR THEME
  static AppBarTheme getAppBarTheme({required bool isLightTheme}) =>
      AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        titleTextStyle:
            getTextTheme(isLightTheme: isLightTheme).bodyLarge!.copyWith(
                  color: Colors.white,
                  fontSize: AppFonts.appBarTitleSize,
                ),
        iconTheme: IconThemeData(
            color: isLightTheme
                ? LightThemeColors.appBarIconsColor
                : DarkThemeColors.appBarIconsColor),
        backgroundColor: isLightTheme
            ? LightThemeColors.appBarColor
            : DarkThemeColors.appbarColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness:
              isLightTheme ? Brightness.dark : Brightness.light,
          systemNavigationBarColor:
              isLightTheme ? Colors.white : DarkThemeColors.primaryColorLight,
        ),
      );

  ///TEXT THEME
  static TextTheme getTextTheme({required bool isLightTheme}) => TextTheme(
        labelLarge: AppFonts.buttonTextStyle
            .copyWith(fontSize: AppFonts.buttonTextSize),
        bodyLarge: (AppFonts.bodyTextStyle).copyWith(
            fontWeight: FontWeight.bold,
            fontSize: AppFonts.body1TextSize,
            color: isLightTheme
                ? LightThemeColors.bodyTextColor
                : DarkThemeColors.bodyTextColor),
        bodyMedium: (AppFonts.bodyTextStyle).copyWith(
            fontSize: AppFonts.body2TextSize,
            color: isLightTheme
                ? LightThemeColors.bodyTextColor
                : DarkThemeColors.bodyTextColor),
        displayLarge: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline1TextSize,
            fontWeight: FontWeight.w700,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColor
                : DarkThemeColors.headlinesTextColor),
        displayMedium: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline5TextSize,
            fontWeight: FontWeight.w500,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColorTwo
                : DarkThemeColors.headlinesTextColorTwo),
        displaySmall: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline3TextSize,
            fontWeight: FontWeight.w500,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColor
                : DarkThemeColors.headlinesTextColor),
        headlineMedium: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline4TextSize,
            fontWeight: FontWeight.bold,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColor
                : DarkThemeColors.headlinesTextColor),
        headlineSmall: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline5TextSize,
            fontWeight: FontWeight.bold,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColor
                : DarkThemeColors.headlinesTextColor),
        titleLarge: (AppFonts.headlineTextStyle).copyWith(
            fontSize: AppFonts.headline6TextSize,
            fontWeight: FontWeight.bold,
            color: isLightTheme
                ? LightThemeColors.headlinesTextColor
                : DarkThemeColors.headlinesTextColor),
        bodySmall: TextStyle(
            color: isLightTheme
                ? LightThemeColors.captionTextColor
                : DarkThemeColors.captionTextColor,
            fontSize: AppFonts.captionTextSize),
      );

  ///ELEVATED BUTTON TEXT STYLE
  static WidgetStateProperty<TextStyle?>? getElevatedButtonTextStyle(
      bool isLightTheme,
      {bool isBold = true,
      double? fontSize}) {
    return WidgetStateProperty.resolveWith<TextStyle>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.pressed)) {
          return AppFonts.buttonTextStyle.copyWith(
              fontWeight: isBold ? FontWeight.w700 : FontWeight.normal,
              fontSize: fontSize ?? AppFonts.buttonTextSize,
              color: LightThemeColors.buttonTextColor);
        } else if (states.contains(WidgetState.disabled)) {
          return AppFonts.buttonTextStyle.copyWith(
              fontSize: fontSize ?? AppFonts.buttonTextSize,
              fontWeight: isBold ? FontWeight.w700 : FontWeight.normal,
              color: isLightTheme
                  ? LightThemeColors.buttonDisabledTextColor
                  : DarkThemeColors.buttonDisabledTextColor);
        }
        return AppFonts.buttonTextStyle.copyWith(
            fontSize: fontSize ?? AppFonts.buttonTextSize,
            fontWeight: isBold ? FontWeight.w700 : FontWeight.normal,
            color: LightThemeColors
                .buttonTextColor); // Use the component's default.
      },
    );
  }

  ///ELEVATED BUTTON THEME DATA
  static ElevatedButtonThemeData getElevatedButtonTheme(
          {required bool isLightTheme}) =>
      ElevatedButtonThemeData(
        style: ButtonStyle(
          minimumSize: WidgetStateProperty.all<Size>(
            Size(190.w, 53.h),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
              //side: BorderSide(color: Colors.teal, width: 2.0),
            ),
          ),
          elevation: WidgetStateProperty.all(0),
          padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w)),
          textStyle: getElevatedButtonTextStyle(isLightTheme),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return isLightTheme
                    ? LightThemeColors.buttonColor.withOpacity(0.5)
                    : DarkThemeColors.buttonColor.withOpacity(0.5);
              } else if (states.contains(WidgetState.disabled)) {
                return isLightTheme
                    ? LightThemeColors.buttonDisabledColor
                    : DarkThemeColors.buttonDisabledColor;
              }
              return isLightTheme
                  ? LightThemeColors.buttonColor
                  : DarkThemeColors.buttonColor; // Use the component's default.
            },
          ),
        ),
      );

  ///ICONS THEME DATA
  static IconThemeData getIconTheme({required bool isLightTheme}) =>
      IconThemeData(
        color: isLightTheme
            ? LightThemeColors.iconColor
            : DarkThemeColors.iconColor,
      );

  ///BOTTOM NAVIGATIONBAR THEME DATA
  static BottomNavigationBarThemeData getBottomNavBarTheme(
          {required bool isLightTheme}) =>
      BottomNavigationBarThemeData(
        backgroundColor: isLightTheme
            ? LightThemeColors.appBarColor
            : DarkThemeColors.appbarColor,
        selectedItemColor: isLightTheme
            ? LightThemeColors.primaryColor
            : DarkThemeColors.primaryColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        selectedLabelStyle: getTextTheme(isLightTheme: isLightTheme)
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.bold),
        unselectedLabelStyle: getTextTheme(isLightTheme: isLightTheme)
            .bodySmall
            ?.copyWith(fontWeight: FontWeight.bold),
      );

  ///PROGRESS INDICATOR THEME DATA
  static ProgressIndicatorThemeData getProgessIndicatorTheme(
      {required bool isLightTheme}) {
    return ProgressIndicatorThemeData(
      color: isLightTheme
          ? LightThemeColors.primaryColor
          : DarkThemeColors.primaryColor,
    );
  }

  ///TEXT SELECTION THEME DATA
  static TextSelectionThemeData getTextSelectionTheme(
      {required bool isLightTheme}) {
    return const TextSelectionThemeData(
        cursorColor: LightThemeColors.primaryColor,
        selectionColor: LightThemeColors.lightGreen,
        selectionHandleColor: LightThemeColors.primaryColor);
  }

  ///INPUT DECORATION THEME DATA
  static InputDecorationTheme getInputDecorationTheme(
      {required bool isLightTheme}) {
    return InputDecorationTheme(
        filled: true,
        fillColor: isLightTheme
            ? LightThemeColors.canvasColor // const Color(0xFFF9F9F9)
            : DarkThemeColors.canvasColor);
  }
}
