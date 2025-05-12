import 'package:get/get.dart';
import 'package:turkticaret_net_case/global/mock_data/mock_connection_status.dart';
import 'package:turkticaret_net_case/global/models/connectionStatus.dart';

class CountriesController extends GetxController {
  Rx<Connectionstatus> connection =
      MockConnectionStatus.mockConnectionStatus.obs;
}
