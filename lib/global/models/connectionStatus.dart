
import 'package:turkticaret_net_case/global/models/country_model.dart';

class Connectionstatus {
  final int downloadSpeed;
  final int uploadSpeed;
  final Duration connectedTime;
  final CountryModel connectedCountry;
  Connectionstatus({
    required this.downloadSpeed,
    required this.uploadSpeed,
    required this.connectedTime,
    required this.connectedCountry,
  });
}
