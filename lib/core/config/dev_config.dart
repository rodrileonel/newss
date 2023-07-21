import 'package:injectable/injectable.dart';
import 'package:superapp/core/config/config.dart';

@dev
@Injectable(as: Config)
class DevConfig implements Config {
  @override
  String get flavorName => 'Dev';

  @override
  String get baseUrl => 'https://newsapi.org/v2';
}
