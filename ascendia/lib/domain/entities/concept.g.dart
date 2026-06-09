// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConceptImpl _$$ConceptImplFromJson(Map<String, dynamic> json) =>
    _$ConceptImpl(
      id: json['id'] as String,
      subjectId: json['subjectId'] as String,
      boardId: json['boardId'] as String,
      classLevel: (json['classLevel'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      bloomRange: json['bloomRange'] as String,
      version: (json['version'] as num?)?.toInt() ?? 1,
      prerequisiteIds: (json['prerequisiteIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$ConceptImplToJson(_$ConceptImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subjectId': instance.subjectId,
      'boardId': instance.boardId,
      'classLevel': instance.classLevel,
      'title': instance.title,
      'description': instance.description,
      'bloomRange': instance.bloomRange,
      'version': instance.version,
      'prerequisiteIds': instance.prerequisiteIds,
    };
