// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class AppColors {
  final BuildContext context;
  AppColors({required this.context});
  late final ColorScheme _themeColor = Theme.of(context).colorScheme;

  late Color blue1 = _themeColor.primary;
  late Color gray1 = _themeColor.onPrimary;
  late Color gray2 = _themeColor.primaryContainer;
  late Color gray3 = _themeColor.onPrimaryContainer;
  late Color white1 = _themeColor.secondary;
  late Color white2 = _themeColor.onSecondary;
  late Color black1 = _themeColor.secondaryContainer;
  late Color green1 = _themeColor.onSecondaryContainer;
  late Color red1 = _themeColor.tertiary;
  late Color onTertiary = _themeColor.onTertiary;
  late Color tertiaryContainer = _themeColor.tertiaryContainer;
  late Color onTertiaryContainer = _themeColor.onTertiaryContainer;
  late Color error = _themeColor.error;
  late Color onError = _themeColor.onError;
  late Color errorContainer = _themeColor.errorContainer;
  late Color onErrorContainer = _themeColor.onErrorContainer;
  late Color outline = _themeColor.outline;
  late Color background = _themeColor.background;
  late Color onBackground = _themeColor.onBackground;
  late Color surface = _themeColor.surface;
  late Color onSurface = _themeColor.onSurface;
  late Color surfaceVariant = _themeColor.surfaceVariant;
  late Color onSurfaceVariant = _themeColor.onSurfaceVariant;
  late Color inverseSurface = _themeColor.inverseSurface;
  late Color onInverseSurface = _themeColor.onInverseSurface;
  late Color inversePrimary = _themeColor.inversePrimary;
  late Color shadow = _themeColor.shadow;
}
