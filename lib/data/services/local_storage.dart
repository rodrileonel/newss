import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  final storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(
      encryptedSharedPreferences: true,
    ),
    iOptions: IOSOptions.defaultOptions
  );

  final String _token = 'token';

  Future setToken(String token) async {
    await storage.write(key: _token, value: token);
  }

  Future<String?> getToken() async {
    return await storage.read(key: _token);
  }
}
