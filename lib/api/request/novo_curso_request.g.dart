// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_curso_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NovoCursoRequest _$NovoCursoRequestFromJson(Map<String, dynamic> json) =>
    NovoCursoRequest(
      json['nome'] as String,
      $enumDecode(_$PeriodoEnumMap, json['periodo']),
    );

Map<String, dynamic> _$NovoCursoRequestToJson(NovoCursoRequest instance) =>
    <String, dynamic>{
      'nome': instance.nome,
      'periodo': _$PeriodoEnumMap[instance.periodo]!,
    };

const _$PeriodoEnumMap = {
  Periodo.manha: 1,
  Periodo.tarde: 2,
  Periodo.noite: 3,
};
