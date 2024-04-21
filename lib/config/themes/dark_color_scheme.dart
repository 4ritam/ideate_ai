
import 'package:flutter/material.dart';

const textColor = Color(0xFFebe9fc);
const backgroundColor = Color(0xFF010104);
const primaryColor = Color(0xFF2b30da);
const primaryFgColor = Color(0xFFebe9fc);
const secondaryColor = Color(0xFF010024);
const secondaryFgColor = Color(0xFFebe9fc);
const accentColor = Color(0xFF0700d6);
const accentFgColor = Color(0xFFebe9fc);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
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
  error: Brightness.dark == Brightness.light
      ? Color(0xffB3261E)
      : Color(0xffF2B8B5),
  onError: Brightness.dark == Brightness.light
      ? Color(0xffFFFFFF)
      : Color(0xff601410),
);
