import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_images.dart';
import 'package:turkticaret_net_case/core/constants/app_route_paths.dart';
import 'package:turkticaret_net_case/core/constants/app_size.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutePaths.HOME_VIEW_PATH);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.widht(width: 40)),
          child: Image.asset(AppImages.APP_LOGO),
        ),
      ),
    );
  }
}
