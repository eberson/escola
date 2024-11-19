import 'package:escola/entidades/periodo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'curso.g.dart';

@JsonSerializable()
class Curso {
  final int id;
  final String nome;
  final Periodo periodo;

  Curso({
    required this.id,
    required this.nome,
    required this.periodo,
  });

  factory Curso.fromJson(Map<String, dynamic> json) => _$CursoFromJson(json);
  Map<String, dynamic> toJson() => _$CursoToJson(this);
}
