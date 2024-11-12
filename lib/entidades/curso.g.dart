// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curso.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Curso _$CursoFromJson(Map<String, dynamic> json) => Curso(
      id: (json['id'] as num).toInt(),
      nome: json['nome'] as String,
      periodo: $enumDecode(_$PeriodoEnumMap, json['periodo']),
    );

Map<String, dynamic> _$CursoToJson(Curso instance) => <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'periodo': _$PeriodoEnumMap[instance.periodo]!,
    };

const _$PeriodoEnumMap = {
  Periodo.manha: 1,
  Periodo.tarde: 2,
  Periodo.noite: 3,
};
