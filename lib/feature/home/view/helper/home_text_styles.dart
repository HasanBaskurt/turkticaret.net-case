import 'package:flutter/material.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/core/constants/app_text_font_weight.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewTextStyles {
  final AppColors appColors;
  HomeViewTextStyles({required this.appColors});

  late TextStyle titleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 20),
    fontWeight: AppTextFontWeight.SEMI_BOLD,
    color: appColors.white1,
  );

  late TextStyle subtitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 20),
    fontWeight: AppTextFontWeight.SEMI_BOLD,
    color: appColors.gray2,
  );

  late TextStyle activeNaviagationBarTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 12),
    fontWeight: AppTextFontWeight.MEDIUM,
    color: appColors.blue1,
  );

  late TextStyle passiveNaviagationBarTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 12),
    fontWeight: AppTextFontWeight.MEDIUM,
    color: appColors.black1,
  );
}
