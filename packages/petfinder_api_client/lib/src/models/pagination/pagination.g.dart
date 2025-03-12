// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  countPerPage: (json['count_per_page'] as num).toInt(),
  totalCount: (json['total_count'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  totalPages: (json['total_pages'] as num).toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'count_per_page': instance.countPerPage,
      'total_count': instance.totalCount,
      'current_page': instance.currentPage,
      'total_pages': instance.totalPages,
    };
