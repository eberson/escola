import 'package:dio/dio.dart';
import 'package:escola/api/request/novo_curso.dart';
import 'package:escola/entidades/curso.dart';
import 'package:retrofit/retrofit.dart';

part 'backend.g.dart';

@RestApi(baseUrl: "https://3b3.em3soft.com.br")
abstract class Backend {
  factory Backend(Dio dio, {String? baseUrl}) = _Backend;

  @GET("/api/Curso/listar")
  Future<List<Curso>> listarCursos();

  @POST("/api/Curso/adicionar")
  Future<String> cadastraNovoCurso(@Body() NovoCurso novoCurso);

  @DELETE("/api/Curso/remover/{id}")
  Future<String> deletarCurso(@Path("id") int id);

  static Backend? _instance;
  static Backend get instance {
    return _instance ??= Backend(Dio());
  }
}
