import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/core/storage/app_storage.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> selectedTheme = AppConstants.DEFAULT_APP_THEME.obs;

  @override
  void onInit() {
    _initializeTheme();
    super.onInit();
  }

  // Initialize theme
  Future<void> _initializeTheme() async {
    try {
      int selectedThemeId =
          AppStorage().getThemeIndex() ?? AppConstants.DEFAULT_APP_THEME.index;

      ThemeMode themeMode = ThemeMode.values.firstWhere(
        (item) => item.index == selectedThemeId,
        orElse: () => AppConstants.DEFAULT_APP_THEME,
      );
      await changeTheme(themeMode);
    } catch (e) {
      debugPrint("Error initializing theme: $e");
    }
  }

  // Change theme
  Future<void> changeTheme(ThemeMode themeMode) async {
    try {
      selectedTheme.value = themeMode;
      AppStorage().setThemeIndex(themeIndex: selectedTheme.value.index);
    } catch (e) {
      debugPrint("Error changing theme: $e");
    }
  }
}
