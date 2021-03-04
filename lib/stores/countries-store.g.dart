// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries-store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountriesStore on _CountriesStore, Store {
  final _$fetchCountryFutureAtom =
      Atom(name: '_CountriesStore.fetchCountryFuture');

  @override
  ObservableFuture<Countries> get fetchCountryFuture {
    _$fetchCountryFutureAtom.reportRead();
    return super.fetchCountryFuture;
  }

  @override
  set fetchCountryFuture(ObservableFuture<Countries> value) {
    _$fetchCountryFutureAtom.reportWrite(value, super.fetchCountryFuture, () {
      super.fetchCountryFuture = value;
    });
  }

  final _$countriesAtom = Atom(name: '_CountriesStore.countries');

  @override
  Countries get countries {
    _$countriesAtom.reportRead();
    return super.countries;
  }

  @override
  set countries(Countries value) {
    _$countriesAtom.reportWrite(value, super.countries, () {
      super.countries = value;
    });
  }

  final _$fetchCountriesAsyncAction =
      AsyncAction('_CountriesStore.fetchCountries');

  @override
  Future<void> fetchCountries() {
    return _$fetchCountriesAsyncAction.run(() => super.fetchCountries());
  }

  @override
  String toString() {
    return '''
fetchCountryFuture: ${fetchCountryFuture},
countries: ${countries}
    ''';
  }
}
