import 'package:injectable/injectable.dart';
import 'package:superapp/core/config/config.dart';

@prod
@Injectable(as: Config)
class ProdConfig implements Config {
  @override
  String get flavorName => 'Prod';

  @override
  String get baseUrl => 'https://newsapi.org/v2';
}
