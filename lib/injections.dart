import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_example/injections.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

abstract class Env {
  static const prd = 'prd';
  static const dev = 'dev';
}