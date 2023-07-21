
import 'package:superapp/data/services/local_storage.dart';

class ConfigApi {
  Future<Map<String, String>> get headers async => {'Authorization': 'Bearer ${await LocalStorage().getToken()}'};

  static final Map<String, String> headersWithoutToken = {'Content-Type': 'application/json'};
}
