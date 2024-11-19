import 'package:escola/api/rest_client.dart';
import 'package:escola/entidades/curso.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CursoViewModel extends ChangeNotifier {
  final List<Curso> cursos = [];

  void criaNovoCurso(String nome, Periodo periodo) {}

  Future<void> listTodosCursos() async {
    final response = await RestClient.instance.listaCursos();

    cursos.clear();
    cursos.addAll(response);

    // notifyListeners();
  }

  static ChangeNotifierProvider<CursoViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => CursoViewModel(),
      );
}
