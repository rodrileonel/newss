import 'package:injectable/injectable.dart';
import 'package:superapp/core/config/config.dart';
import 'package:superapp/data/services/http_service.dart';
import 'package:superapp/data/services/local_storage.dart';

@module
abstract class RegisterApi {
  @preResolve
  @lazySingleton
  Future<HttpService> api(Config config) async {
    return HttpService(baseUrl: config.baseUrl);
  }

  @preResolve
  @lazySingleton
  Future<LocalStorage> storage() async {
    return LocalStorage();
  }
}
