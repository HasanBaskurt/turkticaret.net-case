import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/core/constants/app_icons.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/home/controller/home_controller.dart';
import 'package:turkticaret_net_case/feature/home/view/helper/home_text_styles.dart';
import 'package:turkticaret_net_case/global/models/app_icon_data.dart';
import 'package:turkticaret_net_case/utils/helper/app_icon.dart';

class HomeBottomAppBar extends StatelessWidget {
  HomeBottomAppBar({super.key});

  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final textStyles = HomeViewTextStyles(appColors: appColors);
    return BottomAppBar(
      padding: EdgeInsets.symmetric(horizontal: AppSize.width(width: 21)),
      elevation: 2,
      shadowColor: appColors.black1,
      color: appColors.white2,
      child: Container(
        decoration: BoxDecoration(color: appColors.white2),
        child: Row(
          children: [
            Expanded(
              flex: 6,
              child: _bottomNavigationItem(
                appColors: appColors,
                icon: AppIcons.MAP,
                label: AppLocaleKeys.COUNTRIES.tr,
                textStyles: textStyles,
                pageIndex: AppConstants.COUNTRIES_PAGE_INDEX,
                controller: _homeController,
              ),
            ),
            Spacer(),
            Expanded(
              flex: 6,
              child: _bottomNavigationItem(
                appColors: appColors,
                icon: AppIcons.DISCONNECT,
                label: AppLocaleKeys.DISCONNECT.tr,
                textStyles: textStyles,
                pageIndex: AppConstants.DISCONNECT_PAGE_INDEX,
                controller: _homeController,
              ),
            ),
            Spacer(),

            Expanded(
              flex: 6,
              child: _bottomNavigationItem(
                appColors: appColors,
                icon: AppIcons.SETTING,
                label: AppLocaleKeys.SETTING.tr,
                textStyles: textStyles,
                pageIndex: AppConstants.SETTINGS_PAGE_INDEX,
                controller: _homeController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _bottomNavigationItem({
  required AppIconData icon,
  required String label,
  required HomeViewTextStyles textStyles,
  required int pageIndex,
  required HomeController controller,
  required AppColors appColors,
}) {
  return InkWell(
    onTap: () {
      controller.changePage(newPageIndex: pageIndex);
    },
    child: Obx(() {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppIcon.icon(
            icon,
            height: AppSize.radius(radius: 24),
            width: AppSize.radius(radius: 24),
            color:
                controller.currentPageIndex.value == pageIndex
                    ? appColors.blue1
                    : appColors.black1,
          ),
          SizedBox(height: AppSize.height(height: 6)),
          AutoSizeText(
            overflow: TextOverflow.ellipsis,
            minFontSize: 10,
            maxFontSize: 14,
            maxLines: 1,
            label,
            style:
                controller.currentPageIndex.value == pageIndex
                    ? textStyles.activeNaviagationBarTextStyle
                    : textStyles.passiveNaviagationBarTextStyle,
          ),
        ],
      );
    }),
  );
}
