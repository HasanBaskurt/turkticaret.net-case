import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/core/storage/app_storage.dart';

class LanguageController extends GetxController {
  Rx<Locale> currentLocale = Locale(AppConstants.DEFAULT_LANGUAGE_LOCALE).obs;

  @override
  void onInit() {
    try {
      String languageCode =
          AppStorage().getLanguageCode() ??
          AppConstants.DEFAULT_LANGUAGE_LOCALE;
      currentLocale.value = Locale(languageCode);
      Get.updateLocale(currentLocale.value);
      super.onInit();
    } catch (e) {
      debugPrint('LanguageController:onInit:$e');
    }
  }

  void changeLanguage({required String languageCode}) async {
    try {
      if (currentLocale.value.languageCode == languageCode) {
        return;
      }
      currentLocale.value = Locale(languageCode);
      await AppStorage().setLanguageCode(languageCode: languageCode);
      Get.updateLocale(currentLocale.value);
      Get.forceAppUpdate();
    } catch (e) {
      debugPrint('LanguageController:changeLanguage:$e');
    }
  }
}
