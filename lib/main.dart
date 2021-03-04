import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_login/stores/countries-store.dart';

final CountriesStore countriesStore = CountriesStore();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    countriesStore.fetchCountries();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Observer(
              builder: (_) {
                if (null != countriesStore.fetchCountryFuture) {
                  switch(countriesStore.fetchCountryFuture.status) {
                    case FutureStatus.fulfilled:
                      return Text('Fulfilled');
                    case FutureStatus.pending:
                      return Text('Pending');
                    case FutureStatus.rejected:
                      return Text('Rejected');
                  }
                }

                return Text('No status yet');
              },
          ),
        ),
      ),
    );
  }
}
