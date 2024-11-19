// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novo_curso.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NovoCurso _$NovoCursoFromJson(Map<String, dynamic> json) => NovoCurso(
      json['nome'] as String,
      $enumDecode(_$PeriodoEnumMap, json['periodo']),
    );

Map<String, dynamic> _$NovoCursoToJson(NovoCurso instance) => <String, dynamic>{
      'nome': instance.nome,
      'periodo': _$PeriodoEnumMap[instance.periodo]!,
    };

const _$PeriodoEnumMap = {
  Periodo.manha: 1,
  Periodo.tarde: 2,
  Periodo.noite: 3,
};
