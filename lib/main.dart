import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/core/localization/translations.dart';
import 'package:turkticaret_net_case/global/bindings/global_bindings.dart';
import 'package:turkticaret_net_case/global/controllers/language_controller.dart';
import 'package:turkticaret_net_case/global/controllers/theme_controller.dart';
import 'package:turkticaret_net_case/utils/init/app_initialize.dart';
import 'package:turkticaret_net_case/utils/routes/app_router.dart';
import 'package:turkticaret_net_case/utils/theme/app_custom_dark_theme.dart';
import 'package:turkticaret_net_case/utils/theme/app_custom_light_theme.dart';

void main() async {
  // Initialize the application
  await AppInitialize().create();
  runApp(TurkTicaretNetCase());
}

class TurkTicaretNetCase extends StatelessWidget {
  TurkTicaretNetCase({super.key});
  final ThemeController themeController = Get.find();
  final LanguageController languageController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // We should add screen height and width for auto screen size control
      designSize: const Size(360, 800),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: (context, child) {
        return Obx(() {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppConstants.APP_TITLE,
            initialBinding: GlobalBindings(),

            // Theme Settings
            theme: AppCustomLightTheme().themeData,
            darkTheme: AppCustomDarkTheme().themeData,
            themeMode: themeController.selectedTheme.value,

            // Localizaion Settings
            translations: AppTranslations(),
            locale: languageController.currentLocale.value,
            fallbackLocale: Locale(AppConstants.DEFAULT_LANGUAGE_LOCALE),

            // Routes Settings
            getPages: AppRouter.getPages,
            initialRoute: AppRouter.initialPath,
            unknownRoute: AppRouter.unknownRoute,

            // When change the device text size , the app text size is same everytime
            builder: (context, child) {
              return MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: const TextScaler.linear(1.0)),
                child: child ?? const SizedBox(),
              );
            },
          );
        });
      },
    );
  }
}
