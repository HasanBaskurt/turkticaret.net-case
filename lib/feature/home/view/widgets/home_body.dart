import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/feature/home/view/helper/home_text_styles.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final appColor = AppColors(context: context);
    HomeViewTextStyles textStyles = HomeViewTextStyles(appColors: appColor);
    return Center(
      child: AutoSizeText(
        overflow: TextOverflow.ellipsis,
        minFontSize: 18,
        maxFontSize: 22,
        maxLines: 1,
        "TURKTICARET.NET",
        style: textStyles.subtitleTextStyle,
      ),
    );
  }
}
