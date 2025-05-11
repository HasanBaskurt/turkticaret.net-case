import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/feature/home/controller/home_controller.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _homeController.pages[_homeController.currentPageIndex.value];
    });
  }
}
