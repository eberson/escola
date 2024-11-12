import 'package:escola/entidades/periodo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'criar_curso_request.g.dart';

@JsonSerializable()
class CriarCursoRequest {
  final String nome;
  final Periodo periodo;

  CriarCursoRequest(this.nome, this.periodo);

  factory CriarCursoRequest.fromJson(Map<String, dynamic> json) =>
      _$CriarCursoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CriarCursoRequestToJson(this);
}