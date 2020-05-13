// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:injectable_example/services/counter_service.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Eager singletons must be registered in the right order
  if (environment == 'prd') {
    g.registerSingleton<CounterService>(PrdCounterService());
  }
  if (environment == 'dev') {
    g.registerSingleton<CounterService>(DevCounterService());
  }
}
