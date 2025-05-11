import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/countries/view/helper/countries_text_styles.dart';

class ConnectionTimeArea extends StatelessWidget {
  const ConnectionTimeArea({
    super.key,
    required this.appColors,
    required this.textStyle,
  });

  final AppColors appColors;
  final CountriesViewTextStyles textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(
          overflow: TextOverflow.ellipsis,
          minFontSize: 10,
          maxFontSize: 14,
          maxLines: 1,
          AppLocaleKeys.CONNECTING_TIME.tr,
          style: textStyle.connectionTimeTitleTextStyle,
        ),
        SizedBox(height: AppSize.height(height: 4)),
        AutoSizeText(
          overflow: TextOverflow.ellipsis,
          minFontSize: 22,
          maxFontSize: 26,
          maxLines: 1,
          "02 : 41 : 52",
          style: textStyle.connectionTimeValueTextStyle,
        ),
      ],
    );
  }
}
