import 'package:escola/entidades/curso.dart';
import 'package:escola/entidades/periodo.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CursoViewModel extends ChangeNotifier {
  final List<Curso> cursos = [];

  void criaNovoCurso(String nome, Periodo periodo){

  }

  void listTodosCursos() {
    
  }

  static ChangeNotifierProvider<CursoViewModel> create() =>
      ChangeNotifierProvider(
        create: (_) => CursoViewModel(),
      );
}
