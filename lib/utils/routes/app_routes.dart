import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_route_paths.dart';
import 'package:turkticaret_net_case/feature/error/view/error_view.dart';
import 'package:turkticaret_net_case/feature/home/bindings/home_bindings.dart';
import 'package:turkticaret_net_case/feature/home/view/home_view.dart';
import 'package:turkticaret_net_case/feature/splash/view/splash_view.dart';

// App Routes
class AppRoutes {
  // Get Page
  static GetPage getPage({
    required Widget Function() page,
    required String path,
    Transition? transition,
    Duration? duration,
    List<GetPage>? children,
    Bindings? binding,
    List<Bindings>? bindings,
  }) {
    return GetPage(
      name: path,
      transition: transition ?? Transition.native,
      transitionDuration: duration ?? const Duration(milliseconds: 500),
      fullscreenDialog: true,
      page: page,
      children: children ?? [],
      binding: binding,
      bindings: bindings ?? [],
    );
  }

  // Get Routes
  static final getRoutes = <GetPage>[
    getPage(page: () => const SplashView(), path: AppRoutePaths.INIT_PATH),
    getPage(
      page: () => HomeView(),
      path: AppRoutePaths.HOME_VIEW_PATH,
      binding: HomeBindings(),
    ),
    unknownRoute,
  ];

  // Unknown Route
  static final unknownRoute = getPage(
    page: () => const ErrorView(),
    path: AppRoutePaths.ERROR_VIEW_PATH,
  );
}
