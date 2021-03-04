import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:mobx_login/models/countries-model.dart';

class CountriesRepository {
  Future<Countries> getCountries() async {
    var url = Uri.https('restcountries.eu', '/rest/v2/all');
    var response = await http.get(url);
    Countries countries;

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      countries = Countries.fromJson(jsonResponse);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return countries;
  }
}