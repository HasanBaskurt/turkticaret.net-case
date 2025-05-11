import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/core/localization/en.dart';
import 'package:turkticaret_net_case/core/localization/tr.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    AppConstants.ENGLISH_LOCALE: EN.en_US,
    AppConstants.TURKISH_LOCALE: TR.tr_TR,
  };
}
