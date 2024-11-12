import 'package:escola/api/request/criar_curso_request.dart';
import 'package:escola/api/rest_client.dart';
import 'package:escola/entidades/curso.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CursoViewModel extends ChangeNotifier {

  final List<Curso> cursos = [];


  Future<void> criaNovoCurso(String nome, Periodo periodo) async {
    await RestClient.instance.criarCurso(CriarCursoRequest(nome, periodo));
    await listaTodos();
  }

  Future<void> removerCurso(int id) async {
    await RestClient.instance.removeCurso(id);
    await listaTodos();
  }

  Future<void> listaTodos() async {
    final cursosCarregados = await RestClient.instance.selecionaTodosOsCursos();
    
    cursos.clear();
    cursos.addAll(cursosCarregados);

    notifyListeners();
  }

  static ChangeNotifierProvider<CursoViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => CursoViewModel(),
      );
}
