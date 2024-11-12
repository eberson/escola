// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'criar_curso_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CriarCursoRequest _$CriarCursoRequestFromJson(Map<String, dynamic> json) =>
    CriarCursoRequest(
      json['nome'] as String,
      $enumDecode(_$PeriodoEnumMap, json['periodo']),
    );

Map<String, dynamic> _$CriarCursoRequestToJson(CriarCursoRequest instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'periodo': _$PeriodoEnumMap[instance.periodo]!,
    };

const _$PeriodoEnumMap = {
  Periodo.manha: 1,
  Periodo.tarde: 2,
  Periodo.noite: 3,
};
