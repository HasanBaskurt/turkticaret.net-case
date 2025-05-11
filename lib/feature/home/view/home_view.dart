import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_colors.dart';
import 'package:turkticaret_net_case/feature/home/controller/home_controller.dart';
import 'package:turkticaret_net_case/feature/home/view/widgets/home_app_bar.dart';
import 'package:turkticaret_net_case/feature/home/view/widgets/home_body.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors(context: context);
    return Scaffold(
      backgroundColor: appColors.grey1,
      appBar: HomeAppBar(),
      body: HomeBody(),
    );
  }
}
