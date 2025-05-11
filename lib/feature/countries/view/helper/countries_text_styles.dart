import 'package:flutter/material.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/core/constants/app_text_font_weight.dart';
import 'package:google_fonts/google_fonts.dart';

class CountriesViewTextStyles {
  final AppColors appColors;
  CountriesViewTextStyles({required this.appColors});

  late TextStyle titleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 20),
    fontWeight: AppTextFontWeight.SEMI_BOLD,
    color: appColors.gray2,
  );

  late TextStyle subtitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 20),
    fontWeight: AppTextFontWeight.SEMI_BOLD,
    color: appColors.gray2,
  );

  late TextStyle connectionTimeTitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 12),
    fontWeight: AppTextFontWeight.REGULAR,
    color: appColors.gray3,
  );

  late TextStyle connectionTimeValueTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 24),
    fontWeight: AppTextFontWeight.BOLD,
    color: appColors.gray3,
  );

  late TextStyle freeLocalizationsTitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 12),
    fontWeight: AppTextFontWeight.MEDIUM,
    color: appColors.gray2,
  );

  late TextStyle cardTitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 14),
    fontWeight: AppTextFontWeight.MEDIUM,
    color: appColors.gray3,
  );

  late TextStyle cardSubtitleTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 10),
    fontWeight: AppTextFontWeight.MEDIUM,
    color: appColors.gray2,
  );
}
