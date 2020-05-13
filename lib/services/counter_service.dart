import 'package:injectable/injectable.dart';

abstract class CounterService {
  int getIncrement();
}

@RegisterAs(CounterService, env: 'prd')
@singleton
class PrdCounterService implements CounterService {
  @override
  int getIncrement() => 1;
}

@RegisterAs(CounterService, env: 'dev')
@singleton
class DevCounterService implements CounterService {
  @override
  int getIncrement() => 2;
}