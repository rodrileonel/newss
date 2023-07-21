import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:superapp/core/di/injector.config.dart';

const dev = Environment('dev');
const stg = Environment('stg');
const prod = Environment('prod');

@InjectableInit(preferRelativeImports: false)
Future<void> configure(String environment) async {
  await GetIt.I.init(environment: environment);
}
