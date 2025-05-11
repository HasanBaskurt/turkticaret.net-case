import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';
import 'package:turkticaret_net_case/feature/countries/controller/countries_controller.dart';
import 'package:turkticaret_net_case/feature/countries/view/helper/countries_text_styles.dart';
import 'package:turkticaret_net_case/feature/countries/view/widgets/connection_time_area.dart';
import 'package:turkticaret_net_case/feature/countries/view/widgets/free_locations_area.dart';

class CountriesView extends GetView<CountriesController> {
  const CountriesView({super.key});
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    final textStyle = CountriesViewTextStyles(appColors: appColors);
    return Scaffold(
      backgroundColor: appColors.gray1,
      body: _buildBody(textStyle: textStyle, appColors: appColors),
    );
  }

  Widget _buildBody({
    required CountriesViewTextStyles textStyle,
    required AppColors appColors,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        right: AppSize.width(width: 32),
        left: AppSize.width(width: 32),
        top: AppSize.height(height: 25),
      ),
      child: Column(
        children: [
          Expanded(flex: 4, child: Column(children: [ConnectionTimeArea()])),
          SizedBox(height: AppSize.height(height: 24)),
          Expanded(
            flex: 5,
            child: FreeLocationsArea(
              appColors: appColors,
              textStyle: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
