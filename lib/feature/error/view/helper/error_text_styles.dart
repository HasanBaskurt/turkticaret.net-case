import 'package:flutter/material.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/core/constants/app_text_font_weight.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorViewTextStyles {
  final AppColors appColors;
  ErrorViewTextStyles({required this.appColors});

  late TextStyle messageTextStyle = GoogleFonts.rubik(
    height: 0,
    fontSize: AppSize.fontSize(fontSize: 25),
    fontWeight: AppTextFontWeight.SEMI_BOLD,
    color: appColors.blue1,
  );
}
