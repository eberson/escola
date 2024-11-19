import 'package:escola/entidades/periodo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'novo_curso.g.dart';

@JsonSerializable()
class NovoCurso {
  final String nome;
  final Periodo periodo;

  NovoCurso(this.nome, this.periodo);

  factory NovoCurso.fromJson(Map<String, dynamic> json) =>
      _$NovoCursoFromJson(json);

  Map<String, dynamic> toJson() => _$NovoCursoToJson(this);
}
