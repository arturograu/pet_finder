// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animals_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnimalsListResponse _$AnimalsListResponseFromJson(Map<String, dynamic> json) =>
    _AnimalsListResponse(
      animals:
          (json['animals'] as List<dynamic>)
              .map((e) => Animal.fromJson(e as Map<String, dynamic>))
              .toList(),
      pagination: Pagination.fromJson(
        json['pagination'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AnimalsListResponseToJson(
  _AnimalsListResponse instance,
) => <String, dynamic>{
  'animals': instance.animals,
  'pagination': instance.pagination,
};
