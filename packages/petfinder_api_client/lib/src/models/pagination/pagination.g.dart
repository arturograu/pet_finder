// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  countPerPage: (json['countPerPage'] as num).toInt(),
  totalCount: (json['totalCount'] as num).toInt(),
  currentPage: (json['currentPage'] as num).toInt(),
  totalPages: (json['totalPages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'countPerPage': instance.countPerPage,
      'totalCount': instance.totalCount,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
