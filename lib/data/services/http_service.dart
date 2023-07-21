import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:superapp/data/api/config_api.dart';

class HttpService {
  final Client _client;
  final ConfigApi _configApi;
  final String baseUrl;

  HttpService({
    Client? client,
    ConfigApi? configApi,
    required this.baseUrl,
  })  : _client = client ?? Client(),
        _configApi = configApi ?? ConfigApi();

  Future<Response> put({
    required String endpoint,
    Map<String, String>? headers,
    String body = '',
  }) async {
    String finalEndpoint = '';
    if (endpoint.startsWith('https://') || endpoint.startsWith('http://')) {
      finalEndpoint = endpoint;
    } else {
      finalEndpoint = '$baseUrl$endpoint';
    }
    log(endpoint, name: 'http');
    return _client.put(
      Uri.parse(finalEndpoint),
      headers: headers ?? await _configApi.headers,
      body: body,
    );
  }

  Future<Response> get(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? arguments,
  }) async {
    String finalEndpoint = '';
    if (endpoint.startsWith('https://') || endpoint.startsWith('http://')) {
      finalEndpoint = endpoint;
    } else {
      finalEndpoint = '$baseUrl$endpoint';
    }
    log(endpoint, name: 'http');
    return _client.get(
      Uri.parse(finalEndpoint).replace(queryParameters: arguments),
      headers: headers ?? await _configApi.headers,
    );
  }

  Future<Response> post(
    String endpoint, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
  }) async {
    String finalEndpoint = '';
    if (endpoint.startsWith('http')) {
      finalEndpoint = endpoint;
    } else {
      finalEndpoint = '$baseUrl$endpoint';
    }
    log(endpoint, name: 'http');
    log('$body', name: 'request');
    return _client.post(
      Uri.parse(finalEndpoint),
      headers: headers ?? await _configApi.headers,
      body: json.encode(body),
    );
  }

  Future<Response> delete({
    required String endpoint,
    Map<String, String>? headers,
  }) async {
    String finalEndpoint = '';
    if (endpoint.startsWith('http')) {
      finalEndpoint = endpoint;
    } else {
      finalEndpoint = '$baseUrl$endpoint';
    }
    log(endpoint, name: 'http');
    return _client.delete(
      Uri.parse(finalEndpoint),
      headers: headers ?? await _configApi.headers,
    );
  }
}
