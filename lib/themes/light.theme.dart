import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0XFF00C569);
const lightColor = Color(0XFFFFFFFF);
const backgroundColor = Color(0XFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.white,
      brightness: brightness,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(fontSize: 30),
      headline3: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: primaryColor),
  );
}
