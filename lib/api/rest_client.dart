import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "http://3b3.em3soft.com.br")
abstract class RestClient {
  factory RestClient(
    Dio dio, {
    String? baseUrl,
  }) = _RestClient;
}
