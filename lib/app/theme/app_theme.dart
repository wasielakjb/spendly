import 'package:flutter/material.dart';
import 'package:spendly/app/theme/app_color_scheme.dart';
import 'package:spendly/app/theme/app_text_theme.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    colorScheme: AppColorScheme.light,
    textTheme: AppTextTheme.light,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColorScheme.light.surface,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        return AppTextTheme.light.labelMedium!.copyWith(
          overflow: TextOverflow.ellipsis,
          fontWeight: states.contains(WidgetState.selected) ? FontWeight.bold : null,
        );
      }),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorScheme.light.primary,
      foregroundColor: AppColorScheme.light.surface,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    typography: Typography.material2021(),
    colorScheme: AppColorScheme.dark,
    textTheme: AppTextTheme.dark,
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColorScheme.dark.surface,
      indicatorColor: Colors.transparent,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        return AppTextTheme.dark.labelMedium!.copyWith(
          overflow: TextOverflow.ellipsis,
          fontWeight: states.contains(WidgetState.selected) ? FontWeight.bold : null,
        );
      }),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColorScheme.dark.primary,
      foregroundColor: AppColorScheme.dark.surface,
    ),
  );
}
