import 'package:dio/dio.dart';
import 'package:escola/api/dio.dart';
import 'package:escola/api/request/criar_curso_request.dart';
import 'package:escola/entidades/curso.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: "https://3b3.em3soft.com.br/api")
abstract class RestClient {
  factory RestClient(Dio dio, {String? baseUrl}) = _RestClient;

  @GET("/Curso/listar")
  Future<List<Curso>> selecionaTodosOsCursos();

  @POST("/Curso/adicionar")
  Future<String> criarCurso(@Body() CriarCursoRequest request);

  @DELETE("/Curso/remover/{id}")
  Future<String> removeCurso(@Path("id") int id);

  static RestClient? _instance;
  static RestClient get instance {
    return _instance ??= RestClient(
      buildDioCLient(
        "https://mysteria-api.tccnapratica.com.br/api/Mysteria",
      ),
    );
  }
}