import 'package:get/get.dart';
import 'package:turkticaret_net_case/core/constants/app_route_paths.dart';
import 'package:turkticaret_net_case/utils/routes/app_routes.dart';


// App Router
class AppRouter {
  static const String initialPath = AppRoutePaths.INIT_PATH;
  static final List<GetPage<dynamic>> getPages = AppRoutes.getRoutes;
  static final GetPage<dynamic> unknownRoute = AppRoutes.unknownRoute;
}