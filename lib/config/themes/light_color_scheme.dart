import 'package:flutter/material.dart';

const textColor = Color(0xFF050315);
const backgroundColor = Color(0xFFfbfbfe);
const primaryColor = Color(0xFF2f27ce);
const primaryFgColor = Color(0xFFfbfbfe);
const secondaryColor = Color(0xFFdddcff);
const secondaryFgColor = Color(0xFF050315);
const accentColor = Color(0xFF3028ff);
const accentFgColor = Color(0xFFfbfbfe);

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  background: backgroundColor,
  onBackground: textColor,
  primary: primaryColor,
  onPrimary: primaryFgColor,
  secondary: secondaryColor,
  onSecondary: secondaryFgColor,
  tertiary: accentColor,
  onTertiary: accentFgColor,
  surface: backgroundColor,
  onSurface: textColor,
  error: Brightness.light == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.light == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
