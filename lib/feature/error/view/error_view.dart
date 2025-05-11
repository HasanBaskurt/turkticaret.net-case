import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/feature/error/view/helper/error_text_styles.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    final appColor = AppColors(context: context);
    ErrorViewTextStyles textStyles = ErrorViewTextStyles(appColors: appColor);
    return Scaffold(
      body: Center(
        child: AutoSizeText(
          overflow: TextOverflow.ellipsis,
          minFontSize: 23,
          maxFontSize: 27,
          maxLines: 1,
          AppLocaleKeys.ERROR.tr,
          style: textStyles.messageTextStyle,
        ),
      ),
    );
  }
}
