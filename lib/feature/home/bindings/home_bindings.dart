import 'package:get/instance_manager.dart';
import 'package:turkticaret_net_case/feature/home/controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
