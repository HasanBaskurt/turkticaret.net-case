import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_constants.dart';
import 'package:turkticaret_net_case/feature/countries/view/countries_view.dart';
import 'package:turkticaret_net_case/feature/disconnect/view/disconnect_view.dart';
import 'package:turkticaret_net_case/feature/settings/view/settings_view.dart';

class HomeController extends GetxController {
  List<Widget> pages = [
    const CountriesView(),
    const DisconnectView(),
    const SettingsView(),
  ];

  Rx<int> currentPageIndex = AppConstants.COUNTRIES_PAGE_INDEX.obs;

  void changePage({required int newPageIndex}) {
    currentPageIndex.value = newPageIndex;
  }
}
