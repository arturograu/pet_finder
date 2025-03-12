// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Animal {

 String get id; String get organizationId; String get url; String get type; String get species; String get age; String get gender; String get size; String get coat; String get name; String get description; List<Photo> get photos; String get status; DateTime get publishedAt;
/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimalCopyWith<Animal> get copyWith => _$AnimalCopyWithImpl<Animal>(this as Animal, _$identity);

  /// Serializes this Animal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Animal&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.species, species) || other.species == species)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.coat, coat) || other.coat == coat)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.status, status) || other.status == status)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,url,type,species,age,gender,size,coat,name,description,const DeepCollectionEquality().hash(photos),status,publishedAt);

@override
String toString() {
  return 'Animal(id: $id, organizationId: $organizationId, url: $url, type: $type, species: $species, age: $age, gender: $gender, size: $size, coat: $coat, name: $name, description: $description, photos: $photos, status: $status, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class $AnimalCopyWith<$Res>  {
  factory $AnimalCopyWith(Animal value, $Res Function(Animal) _then) = _$AnimalCopyWithImpl;
@useResult
$Res call({
 String id, String organizationId, String url, String type, String species, String age, String gender, String size, String coat, String name, String description, List<Photo> photos, String status, DateTime publishedAt
});




}
/// @nodoc
class _$AnimalCopyWithImpl<$Res>
    implements $AnimalCopyWith<$Res> {
  _$AnimalCopyWithImpl(this._self, this._then);

  final Animal _self;
  final $Res Function(Animal) _then;

/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? organizationId = null,Object? url = null,Object? type = null,Object? species = null,Object? age = null,Object? gender = null,Object? size = null,Object? coat = null,Object? name = null,Object? description = null,Object? photos = null,Object? status = null,Object? publishedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,coat: null == coat ? _self.coat : coat // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Animal implements Animal {
  const _Animal({required this.id, required this.organizationId, required this.url, required this.type, required this.species, required this.age, required this.gender, required this.size, required this.coat, required this.name, required this.description, required final  List<Photo> photos, required this.status, required this.publishedAt}): _photos = photos;
  factory _Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

@override final  String id;
@override final  String organizationId;
@override final  String url;
@override final  String type;
@override final  String species;
@override final  String age;
@override final  String gender;
@override final  String size;
@override final  String coat;
@override final  String name;
@override final  String description;
 final  List<Photo> _photos;
@override List<Photo> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override final  String status;
@override final  DateTime publishedAt;

/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimalCopyWith<_Animal> get copyWith => __$AnimalCopyWithImpl<_Animal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Animal&&(identical(other.id, id) || other.id == id)&&(identical(other.organizationId, organizationId) || other.organizationId == organizationId)&&(identical(other.url, url) || other.url == url)&&(identical(other.type, type) || other.type == type)&&(identical(other.species, species) || other.species == species)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&(identical(other.coat, coat) || other.coat == coat)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.status, status) || other.status == status)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,organizationId,url,type,species,age,gender,size,coat,name,description,const DeepCollectionEquality().hash(_photos),status,publishedAt);

@override
String toString() {
  return 'Animal(id: $id, organizationId: $organizationId, url: $url, type: $type, species: $species, age: $age, gender: $gender, size: $size, coat: $coat, name: $name, description: $description, photos: $photos, status: $status, publishedAt: $publishedAt)';
}


}

/// @nodoc
abstract mixin class _$AnimalCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$AnimalCopyWith(_Animal value, $Res Function(_Animal) _then) = __$AnimalCopyWithImpl;
@override @useResult
$Res call({
 String id, String organizationId, String url, String type, String species, String age, String gender, String size, String coat, String name, String description, List<Photo> photos, String status, DateTime publishedAt
});




}
/// @nodoc
class __$AnimalCopyWithImpl<$Res>
    implements _$AnimalCopyWith<$Res> {
  __$AnimalCopyWithImpl(this._self, this._then);

  final _Animal _self;
  final $Res Function(_Animal) _then;

/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? organizationId = null,Object? url = null,Object? type = null,Object? species = null,Object? age = null,Object? gender = null,Object? size = null,Object? coat = null,Object? name = null,Object? description = null,Object? photos = null,Object? status = null,Object? publishedAt = null,}) {
  return _then(_Animal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,organizationId: null == organizationId ? _self.organizationId : organizationId // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,coat: null == coat ? _self.coat : coat // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photo>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,publishedAt: null == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
