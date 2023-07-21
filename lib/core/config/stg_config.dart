import 'package:injectable/injectable.dart';
import 'package:superapp/core/config/config.dart';
import 'package:superapp/core/di/injector.dart';

@stg
@Injectable(as: Config)
class StgConfig implements Config {
  @override
  String get flavorName => 'Stg';

  @override
  String get baseUrl => 'https://newsapi.org/v2';
}
