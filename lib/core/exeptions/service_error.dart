import 'package:superapp/core/exeptions/http_exception.dart';

class ServiceError extends HttpException {
  ServiceError(this.error);

  /// Error thrown
  final dynamic error;
}

class UnknowError extends HttpException {
  UnknowError(this.error);

  /// Error thrown
  final dynamic error;
}

class InternetConnectionError extends HttpException {
  InternetConnectionError(this.error);

  /// Error thrown
  final dynamic error;
}
