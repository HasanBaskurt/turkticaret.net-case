// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_icons.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/countries/view/helper/countries_text_styles.dart';
import 'package:turkticaret_net_case/global/models/app_icon_data.dart';
import 'package:turkticaret_net_case/utils/helper/app_icon.dart';

class ConnectedCountryStatusArea extends StatelessWidget {
  const ConnectedCountryStatusArea({
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
        _countryInfoCard(),
        SizedBox(height: AppSize.height(height: 8)),

        Row(
          children: [
            Expanded(
              child: _statusCard(
                title: AppLocaleKeys.DOWNLOAD.tr,
                value: "527",
                icon: AppIcons.DOWNLOAD,
                color: appColors.green1,
              ),
            ),
            SizedBox(width: AppSize.width(width: 8)),
            Expanded(
              child: _statusCard(
                title: AppLocaleKeys.UPLOAD.tr,
                value: "48",
                icon: AppIcons.UPLOAD,
                color: appColors.red1,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _countryInfoCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
        color: appColors.white1,
      ),
      height: AppSize.height(height: 56),
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
            flex: 6,
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
                      "Netherlands",
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
                      "Amsterdam",
                      style: textStyle.cardSubtitleTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: AppSize.width(width: 8)),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 10,
                      maxFontSize: 14,
                      maxLines: 1,
                      AppLocaleKeys.STEALTH.tr,
                      style: textStyle.stealthTitleTextStyle,
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: AutoSizeText(
                      overflow: TextOverflow.ellipsis,
                      minFontSize: 9,
                      maxFontSize: 13,
                      maxLines: 1,
                      "14%",
                      style: textStyle.stealthValueTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _statusCard({
    required String title,
    required String value,
    required AppIconData icon,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
        color: appColors.white1,
      ),
      height: AppSize.height(height: 54),
      padding: EdgeInsets.symmetric(
        horizontal: AppSize.width(width: 12),
        vertical: AppSize.height(height: 12),
      ),
      child: Row(
        children: [
          Container(
            height: AppSize.height(height: 28),
            width: AppSize.height(height: 28),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.radius(radius: 8)),
              color: color.withOpacity(0.15),
            ),
            padding: EdgeInsets.all(AppSize.radius(radius: 4)),
            child: AppIcon.icon(
              icon,
            ),
          ),
          SizedBox(width: AppSize.width(width: 8)),
          Expanded(
            flex: 6,
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
                      "$title :",
                      style: textStyle.statusTitleTextStyle,
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
                      "$value MB",
                      style: textStyle.statusValueTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
