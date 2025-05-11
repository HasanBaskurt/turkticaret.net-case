import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/feature/countries/controller/countries_controller.dart';
import 'package:turkticaret_net_case/feature/disconnect/view/helper/disconnect_text_styles.dart';

class DisconnectView extends GetView<CountriesController> {
  const DisconnectView({super.key});
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final textStyle = DisconnectViewTextStyles(appColors: appColors);
    return Scaffold(
      backgroundColor: appColors.gray1,
      body: _buildBody(textStyle: textStyle),
    );
  }

  Widget _buildBody({required DisconnectViewTextStyles textStyle}) {
    return Center(
      child: Text(AppLocaleKeys.DISCONNECT.tr, style: textStyle.titleTextStyle),
    );
  }
}
