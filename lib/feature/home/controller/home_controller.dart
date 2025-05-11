import 'package:get/get.dart';

class HomeController extends GetxController{
  Rx<int> counter = 0.obs;

  void increment() {
    counter.value++;
  }
}