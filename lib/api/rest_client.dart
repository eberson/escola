import 'package:dio/dio.dart';
import 'package:escola/api/dio.dart';
import 'package:escola/entidades/curso.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://3b3.em3soft.com.br")
abstract class RestClient {
  factory RestClient(
    Dio dio, {
    String? baseUrl,
  }) = _RestClient;

  @GET("/api/Curso/listar")
  Future<List<Curso>> listaCursos();

  static RestClient? _instance;
  static RestClient get instance {
    return _instance ??= RestClient(
      buildDioClient("https://3b3.em3soft.com.br"),
    );
  }
}
