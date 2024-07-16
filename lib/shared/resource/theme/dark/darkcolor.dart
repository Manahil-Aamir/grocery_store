import 'package:flutter/material.dart';

abstract class DarkThemeColors {
  //DARK SWATCH
  static const primaryColor = Color(0xFF23AA49);
  static const primaryColorLight = Color(0xFF0D1F29);
  static const primaryColorDark = Color(0xFF1A3848);
  static const accentColor = Color(0xFFFF324B);
  static const canvasColor = Color(0xFF172C38);

  //Appbar
  static const appbarColor = Colors.transparent;

  //SCAFFOLD
  static const scaffoldBackgroundColor = Color(0xFF0D1F29);
  static const backgroundColor = Color(0xFF172C38);
  static const dividerColor = Color(0xFF203744);
  static const cardColor = Color(0xFF1A3848);

  //ICONS
  static const appBarIconsColor = Colors.white;
  static const iconColor = Color(0xFF617986);

  //BUTTON
  static const buttonColor = primaryColor;
  static const buttonTextColor = Colors.black;
  static const buttonDisabledColor = Colors.grey;
  static const buttonDisabledTextColor = Colors.black;

  //TEXT
  static const bodyTextColor = Color(0xFF617986);
  static const headlinesTextColor = Colors.white;
  static const headlinesTextColorTwo = Color(0xFF617986);
  static const captionTextColor = Colors.black;
  static const hintTextColor = Color(0xFF617986);

  // progress bar indicator
  static const progressIndicatorColor = primaryColor;
  static const lightGreen = Color(0XFFd8f8cf);
  static const superLightGrey = Color(0xFFECEDF1);
}
