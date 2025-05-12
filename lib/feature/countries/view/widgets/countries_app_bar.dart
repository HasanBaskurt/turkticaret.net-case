import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_icons.dart';
import 'package:turkticaret_net_case/core/constants/app_images.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/countries/view/helper/countries_text_styles.dart';
import 'package:turkticaret_net_case/global/models/app_icon_data.dart';
import 'package:turkticaret_net_case/utils/helper/app_icon.dart';

class CountriesAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CountriesAppBar({super.key, this.height = 190});

  @override
  Size get preferredSize => Size.fromHeight(AppSize.height(height: height));
  final TextEditingController searchController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final textStyle = CountriesViewTextStyles(appColors: appColors);
    return Stack(
      children: [
        Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
              color: appColors.blue1,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(36)),
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(AppSize.radius(radius: 32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _appBarIcon(
                          appColors: appColors,
                          icon: AppIcons.CATEGORY,
                        ),

                        Expanded(
                          child: AutoSizeText(
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            minFontSize: 14,
                            maxFontSize: 18,
                            maxLines: 1,
                            AppLocaleKeys.COUNTRIES.tr,
                            style: textStyle.titleTextStyle,
                          ),
                        ),
                        _appBarIcon(appColors: appColors, icon: AppIcons.CROWN),
                      ],
                    ),
                    SizedBox(height: AppSize.height(height: 24)),

                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          hintText: AppLocaleKeys.SEARCH_FOR_COUNTRY_OR_CITY.tr,
                          hintStyle: textStyle.searchHintTextStyle,
                          labelStyle: textStyle.searchLabelTextStyle,

                          filled: true,
                          fillColor: appColors.white1,
                          suffixIcon: Padding(
                            padding: EdgeInsets.only(
                              right: AppSize.width(width: 16),
                            ),
                            child: AppIcon.icon(
                              AppIcons.SEARCH,
                              color: appColors.gray2,
                              height: AppSize.height(height: 20),
                              width: AppSize.width(width: 20),
                            ),
                          ),

                          contentPadding: EdgeInsets.symmetric(
                            vertical: AppSize.height(height: 16),
                            horizontal: AppSize.width(width: 16),
                          ),

                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(
                              Radius.circular(AppSize.radius(radius: 16)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        Row(
          children: [
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(AppImages.BACKGROUND_IMAGE_LEFT),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topRight,
                child: Image.asset(AppImages.BACKGROUND_IMAGE_RIGHT),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Container _appBarIcon({
    required AppColors appColors,
    required AppIconData icon,
  }) {
    return Container(
      width: AppSize.radius(radius: 40),
      height: AppSize.radius(radius: 40),
      padding: EdgeInsets.all(AppSize.radius(radius: 8)),
      decoration: BoxDecoration(
        color: appColors.blue2,
        borderRadius: BorderRadius.circular(AppSize.radius(radius: 12)),
      ),
      child: AppIcon.icon(icon),
    );
  }
}
