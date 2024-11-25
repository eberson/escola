import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

PrettyDioLogger _logger() => PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      compact: true,
      maxWidth: 90,
    );

Dio buildDioClient(String base) {
  final dio = Dio()
    ..options = BaseOptions(
      baseUrl: base,
    );

  dio.interceptors.addAll([
    _logger(),
  ]);

  return dio;
}
