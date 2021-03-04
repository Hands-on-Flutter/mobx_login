import 'country-model.dart';

class Countries {
  List<Country> countries = [];

  Countries({ this.countries });

  factory Countries.fromJson(List<dynamic> json) {
    print(json);
    List<Country> _countries = [];

    json.forEach((element) {
      _countries.add(Country.fromJson(element));
    });

    return Countries(countries: _countries);
  }
}