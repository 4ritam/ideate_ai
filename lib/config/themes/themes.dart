import 'package:flutter/material.dart';

import 'text_theme.dart';
import 'dark_color_scheme.dart';
import 'light_color_scheme.dart';

ThemeData lightTheme = ThemeData.from(
  colorScheme: lightColorScheme,
  textTheme: textTheme,
  useMaterial3: true,
);

ThemeData darkTheme = ThemeData.from(
  colorScheme: darkColorScheme,
  textTheme: textTheme,
  useMaterial3: true,
);
