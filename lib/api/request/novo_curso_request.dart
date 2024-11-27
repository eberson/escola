import 'package:escola/entidades/periodo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'novo_curso_request.g.dart';

@JsonSerializable()
class NovoCursoRequest {
  final String nome;
  final Periodo periodo;

  NovoCursoRequest(this.nome, this.periodo);

  factory NovoCursoRequest.fromJson(Map<String, dynamic> json) =>
      _$NovoCursoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NovoCursoRequestToJson(this);
}
