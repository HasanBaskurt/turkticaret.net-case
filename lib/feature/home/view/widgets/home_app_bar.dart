import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_locale_keys.dart';
import 'package:turkticaret_net_case/feature/home/view/helper/home_text_styles.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appColor = AppColors(context: context);
    HomeViewTextStyles textStyles = HomeViewTextStyles(appColors: appColor);
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: appColor.blue1,
      title: AutoSizeText(
        overflow: TextOverflow.ellipsis,
        minFontSize: 18,
        maxFontSize: 22,
        maxLines: 1,
        AppLocaleKeys.HOME.tr,
        style: textStyles.titleTextStyle,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
