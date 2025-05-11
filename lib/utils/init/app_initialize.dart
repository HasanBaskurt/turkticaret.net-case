//This class used to initialize the application process
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/instance_manager.dart';
import 'package:turkticaret_net_case/core/storage/app_storage.dart';
import 'package:turkticaret_net_case/global/controllers/language_controller.dart';
import 'package:turkticaret_net_case/global/controllers/theme_controller.dart';

@immutable
final class AppInitialize {
  //  Project basic required initialize
  Future<void> create() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {});
  }

  //This method used to initialize the application process
  Future<void> _initialize() async {
    // Device Orientation
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // Storage Initialize
    await AppStorage().init();

    // App Theme Initialize
    Get.put<ThemeController>(ThemeController(), permanent: true);

    // App Localization Initialize
    Get.put<LanguageController>(LanguageController(), permanent: true);

    // Error Handling Initialize
    FlutterError.onError = (details) {};
  }
}
