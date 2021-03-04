import 'package:mobx/mobx.dart';
import 'package:mobx_login/models/countries-model.dart';
import 'package:mobx_login/services/countries-repository.dart';

// Include generated file
part 'countries-store.g.dart';

// This is the class used by rest of your codebase
class CountriesStore = _CountriesStore with _$CountriesStore;

// The store-class
abstract class _CountriesStore with Store {
  @observable
  ObservableFuture<Countries> fetchCountryFuture;
  @observable
  Countries countries;

  @action
  Future<void> fetchCountries() async {
    CountriesRepository countriesRepo = CountriesRepository();

    fetchCountryFuture = ObservableFuture(countriesRepo.getCountries());
    countries = await fetchCountryFuture;
  }
}