import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/feature/countries/controller/countries_controller.dart';
import 'package:turkticaret_net_case/feature/settings/view/helper/settings_text_styles.dart';

class SettingsView extends GetView<CountriesController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final textStyle = SettingsViewTextStyles(appColors: appColors);
    return Scaffold(
      backgroundColor: appColors.gray1,
      body: _buildBody(textStyle: textStyle),
    );
  }

  Center _buildBody({required SettingsViewTextStyles textStyle}) {
    return Center(
      child: Text(AppLocaleKeys.SETTING.tr, style: textStyle.titleTextStyle),
    );
  }
}
