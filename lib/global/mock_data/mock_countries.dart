
import 'package:turkticaret_net_case/core/constants/app_images.dart';
import 'package:turkticaret_net_case/global/models/country_model.dart';

class MockCountries {
  static CountryModel italy = CountryModel(
    name: 'Italy',
    flag: AppImages.ITALY_FLAG,
    city: 'Roma',
    locationCount: 4,
    strength: 70,
  );

  static CountryModel netherlands = CountryModel(
    name: 'Netherlands',
    flag: AppImages.NETHERLANDS_FLAG,
    city: 'Amsterdam',
    locationCount: 12,
    strength: 85,
  );

  static CountryModel germany = CountryModel(
    name: 'Germany',
    flag: AppImages.GERMANY_FLAG,
    city: 'Berlin',
    locationCount: 10,
    strength: 90,
  );

  static List<CountryModel> get countries => [italy, netherlands, germany];
}
