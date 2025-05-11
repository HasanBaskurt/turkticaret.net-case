import 'package:turkticaret_net_case/utils/theme/app_color_scheme.dart';
import 'package:turkticaret_net_case/utils/theme/app_custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Custom Light Theme For Project Design
final class AppCustomLightTheme extends AppCustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.roboto().fontFamily,
        colorScheme: AppColorScheme.lightColorScheme,
        floatingActionButtonTheme: floatingActionButtonThemeData,
         splashFactory: NoSplash.splashFactory
      );

  @override
  FloatingActionButtonThemeData get floatingActionButtonThemeData =>
      const FloatingActionButtonThemeData();
}
