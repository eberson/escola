import 'package:escola/entidades/periodo.dart';

class Curso {
  final int id;
  final String nome;
  final Periodo periodo;

  Curso({
    required this.id,
    required this.nome,
    required this.periodo,
  });
}
