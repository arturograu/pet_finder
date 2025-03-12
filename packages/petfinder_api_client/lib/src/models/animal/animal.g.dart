// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Animal _$AnimalFromJson(Map<String, dynamic> json) => _Animal(
  id: (json['id'] as num).toInt(),
  organizationId: json['organization_id'] as String,
  url: json['url'] as String,
  type: json['type'] as String,
  species: json['species'] as String,
  age: json['age'] as String,
  gender: json['gender'] as String,
  size: json['size'] as String,
  name: json['name'] as String,
  photos:
      (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as String,
  publishedAt: DateTime.parse(json['published_at'] as String),
  coat: json['coat'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$AnimalToJson(_Animal instance) => <String, dynamic>{
  'id': instance.id,
  'organization_id': instance.organizationId,
  'url': instance.url,
  'type': instance.type,
  'species': instance.species,
  'age': instance.age,
  'gender': instance.gender,
  'size': instance.size,
  'name': instance.name,
  'photos': instance.photos,
  'status': instance.status,
  'published_at': instance.publishedAt.toIso8601String(),
  'coat': instance.coat,
  'description': instance.description,
};
