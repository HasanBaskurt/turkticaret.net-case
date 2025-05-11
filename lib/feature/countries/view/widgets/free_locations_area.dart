import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_icons.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/countries/view/helper/countries_text_styles.dart';
import 'package:turkticaret_net_case/utils/helper/app_icon.dart';

class FreeLocationsArea extends StatelessWidget {
  const FreeLocationsArea({
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
        Row(
          children: [
            Expanded(
              child: AutoSizeText(
                overflow: TextOverflow.ellipsis,
                minFontSize: 10,
                maxFontSize: 14,
                maxLines: 1,
                "${AppLocaleKeys.FREE_LOCATIONS.tr} (3)",
                style: textStyle.freeLocalizationsTitleTextStyle,
              ),
            ),
            Icon(
              Icons.info,
              color: appColors.gray2,
              size: AppSize.radius(radius: 16),
            ),
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return _listCard();
            },
          ),
        ),
      ],
    );
  }

  Container _listCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
        color: appColors.white1,
      ),
      height: AppSize.height(height: 54),
      margin: EdgeInsets.only(top: AppSize.height(height: 8)),
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.width(width: 12),
        vertical: AppSize.height(height: 12),
      ),
      child: Row(
        children: [
          Container(
            height: AppSize.height(height: 28),
            width: AppSize.height(height: 36),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.radius(radius: 6.9)),
            ),
            child: AppIcon.icon(AppIcons.NETHERLANDS_FLAG),
          ),
          SizedBox(width: AppSize.width(width: 8)),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 10,
                      maxFontSize: 14,
                      maxLines: 1,
                      "Turkey",
                      style: textStyle.cardTitleTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 10,
                      maxFontSize: 14,
                      maxLines: 1,
                      "4 ${AppLocaleKeys.LOCATIONS.tr}",
                      style: textStyle.cardSubtitleTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppSize.width(width: 8)),
          Container(
            height: AppSize.height(height: 28),
            width: AppSize.height(height: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
              color: appColors.blue1,
            ),
            child: Icon(
              Icons.power_settings_new_rounded,
              color: appColors.white1,
              size: AppSize.radius(radius: 20),
            ),
          ),

          SizedBox(width: AppSize.width(width: 8)),
          Container(
            height: AppSize.height(height: 28),
            width: AppSize.height(height: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
              color: appColors.gray1,
            ),
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: appColors.gray3,
              size: AppSize.radius(radius: 20),
            ),
          ),
        ],
      ),
    );
  }
}
