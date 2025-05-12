import 'package:turkticaret_net_case/global/mock_data/mock_countries.dart';
import 'package:turkticaret_net_case/global/models/connectionStatus.dart';

class MockConnectionStatus {
  static Connectionstatus mockConnectionStatus = Connectionstatus(
    downloadSpeed: 527,
    uploadSpeed: 49,
    connectedTime: Duration(hours: 2, minutes: 41, seconds: 52),
    connectedCountry: MockCountries.countries[1],
  );
}
