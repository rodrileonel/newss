import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server(String message) = ServerError;
  const factory Failure.unknow(String message) = UnknowError;
  const factory Failure.connection(String message) = ConnectionError;
}
