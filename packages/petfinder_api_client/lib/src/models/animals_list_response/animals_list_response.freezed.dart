// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animals_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimalsListResponse {

 List<Animal> get animals; Pagination get pagination;
/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimalsListResponseCopyWith<AnimalsListResponse> get copyWith => _$AnimalsListResponseCopyWithImpl<AnimalsListResponse>(this as AnimalsListResponse, _$identity);

  /// Serializes this AnimalsListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimalsListResponse&&const DeepCollectionEquality().equals(other.animals, animals)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(animals),pagination);

@override
String toString() {
  return 'AnimalsListResponse(animals: $animals, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $AnimalsListResponseCopyWith<$Res>  {
  factory $AnimalsListResponseCopyWith(AnimalsListResponse value, $Res Function(AnimalsListResponse) _then) = _$AnimalsListResponseCopyWithImpl;
@useResult
$Res call({
 List<Animal> animals, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$AnimalsListResponseCopyWithImpl<$Res>
    implements $AnimalsListResponseCopyWith<$Res> {
  _$AnimalsListResponseCopyWithImpl(this._self, this._then);

  final AnimalsListResponse _self;
  final $Res Function(AnimalsListResponse) _then;

/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? animals = null,Object? pagination = null,}) {
  return _then(_self.copyWith(
animals: null == animals ? _self.animals : animals // ignore: cast_nullable_to_non_nullable
as List<Animal>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _AnimalsListResponse implements AnimalsListResponse {
   _AnimalsListResponse({required final  List<Animal> animals, required this.pagination}): _animals = animals;
  factory _AnimalsListResponse.fromJson(Map<String, dynamic> json) => _$AnimalsListResponseFromJson(json);

 final  List<Animal> _animals;
@override List<Animal> get animals {
  if (_animals is EqualUnmodifiableListView) return _animals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_animals);
}

@override final  Pagination pagination;

/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimalsListResponseCopyWith<_AnimalsListResponse> get copyWith => __$AnimalsListResponseCopyWithImpl<_AnimalsListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimalsListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimalsListResponse&&const DeepCollectionEquality().equals(other._animals, _animals)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_animals),pagination);

@override
String toString() {
  return 'AnimalsListResponse(animals: $animals, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$AnimalsListResponseCopyWith<$Res> implements $AnimalsListResponseCopyWith<$Res> {
  factory _$AnimalsListResponseCopyWith(_AnimalsListResponse value, $Res Function(_AnimalsListResponse) _then) = __$AnimalsListResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Animal> animals, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$AnimalsListResponseCopyWithImpl<$Res>
    implements _$AnimalsListResponseCopyWith<$Res> {
  __$AnimalsListResponseCopyWithImpl(this._self, this._then);

  final _AnimalsListResponse _self;
  final $Res Function(_AnimalsListResponse) _then;

/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? animals = null,Object? pagination = null,}) {
  return _then(_AnimalsListResponse(
animals: null == animals ? _self._animals : animals // ignore: cast_nullable_to_non_nullable
as List<Animal>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of AnimalsListResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
