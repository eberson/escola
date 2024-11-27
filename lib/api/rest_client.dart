import 'package:dio/dio.dart';
import 'package:escola/api/dio.dart';
import 'package:escola/api/request/novo_curso_request.dart';
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

  @DELETE("/api/Curso/remover/{id}")
  Future<String> removeCurso(@Path("id") int id);

  @POST("/api/Curso/adicionar")
  Future<String> novoCurso(@Body() NovoCursoRequest request);

  static RestClient? _instance;
  static RestClient get instance {
    return _instance ??= RestClient(
      buildDioClient("https://3b3.em3soft.com.br"),
    );
  }
}
