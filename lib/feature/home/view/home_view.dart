import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/feature/home/controller/home_controller.dart';
import 'package:turkticaret_net_case/feature/home/view/widgets/home_body.dart';
import 'package:turkticaret_net_case/feature/home/view/widgets/home_bottom_app_bar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeBody(), bottomNavigationBar: HomeBottomAppBar());
  }
}
