import 'package:flutter/material.dart';
import 'package:spendly/app/theme/app_color_scheme.dart';
import 'package:spendly/app/theme/app_text_theme.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    colorScheme: AppColorScheme.light,
    textTheme: AppTextTheme.light,
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    colorScheme: AppColorScheme.dark,
    textTheme: AppTextTheme.dark,
  );
}
