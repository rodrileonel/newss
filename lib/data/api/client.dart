import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';
import 'package:superapp/core/exeptions/service_error.dart';
import 'package:superapp/data/dto/error.dart';

class ApiClient {
  ApiClient._();
  static final ApiClient _instance = ApiClient._();
  static ApiClient get instance => _instance;

  Future<Either<Failure, T?>> request<T>(T Function(String) callback, Future<Response> httpService, String url) async {
    final connectivity = await (Connectivity().checkConnectivity());
    try {
      if (connectivity == ConnectivityResult.wifi || connectivity == ConnectivityResult.mobile) {
        try {
          final response = await httpService;
          log(response.body, name: 'response');
          if (response.statusCode == 200 || response.statusCode == 201) {
            final data = callback(response.body);
            return Right(data);
          } else {
            throw ServiceError('$url: StatusCode: ${response.statusCode} / response: ${response.body}');
          }
        } on ServiceError catch (e) {
          return Left(Failure.server('$e'));
        } catch (e) {
          return const Left(Failure.unknow('UNKNOW ERROR'));
        }
      } else {
        throw InternetConnectionError('no internet');
      }
    } on ServiceError {
      return const Left(Failure.connection('You are not connected to internet'));
    } catch (e) {
      return const Left(Failure.unknow('UNKNOW ERROR'));
    }
  }
}
