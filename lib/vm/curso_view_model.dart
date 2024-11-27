import 'package:escola/api/request/novo_curso_request.dart';
import 'package:escola/api/rest_client.dart';
import 'package:escola/entidades/curso.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CursoViewModel extends ChangeNotifier {
  final List<Curso> cursos = [];

  Future<void> criaNovoCurso(String nome, Periodo periodo) async {
    final request = NovoCursoRequest(nome, periodo);
    await RestClient.instance.novoCurso(request);
  }

  Future<void> listTodosCursos() async {
    final response = await RestClient.instance.listaCursos();

    cursos.clear();
    cursos.addAll(response);

    // notifyListeners();
  }

  Future<String> removeCurso(int id) {
    return RestClient.instance.removeCurso(id);
  }

  static ChangeNotifierProvider<CursoViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => CursoViewModel(),
      );
}
