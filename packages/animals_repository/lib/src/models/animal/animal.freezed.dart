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

 String get name; String get description; String get age; String get gender; String get size; List<String> get gallery; String? get primaryImage;
/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimalCopyWith<Animal> get copyWith => _$AnimalCopyWithImpl<Animal>(this as Animal, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Animal&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other.gallery, gallery)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,age,gender,size,const DeepCollectionEquality().hash(gallery),primaryImage);

@override
String toString() {
  return 'Animal(name: $name, description: $description, age: $age, gender: $gender, size: $size, gallery: $gallery, primaryImage: $primaryImage)';
}


}

/// @nodoc
abstract mixin class $AnimalCopyWith<$Res>  {
  factory $AnimalCopyWith(Animal value, $Res Function(Animal) _then) = _$AnimalCopyWithImpl;
@useResult
$Res call({
 String name, String description, String age, String gender, String size, List<String> gallery, String? primaryImage
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
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? description = null,Object? age = null,Object? gender = null,Object? size = null,Object? gallery = null,Object? primaryImage = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self.gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,primaryImage: freezed == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _Animal implements Animal {
  const _Animal({required this.name, required this.description, required this.age, required this.gender, required this.size, required final  List<String> gallery, this.primaryImage}): _gallery = gallery;
  

@override final  String name;
@override final  String description;
@override final  String age;
@override final  String gender;
@override final  String size;
 final  List<String> _gallery;
@override List<String> get gallery {
  if (_gallery is EqualUnmodifiableListView) return _gallery;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gallery);
}

@override final  String? primaryImage;

/// Create a copy of Animal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimalCopyWith<_Animal> get copyWith => __$AnimalCopyWithImpl<_Animal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Animal&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.age, age) || other.age == age)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.size, size) || other.size == size)&&const DeepCollectionEquality().equals(other._gallery, _gallery)&&(identical(other.primaryImage, primaryImage) || other.primaryImage == primaryImage));
}


@override
int get hashCode => Object.hash(runtimeType,name,description,age,gender,size,const DeepCollectionEquality().hash(_gallery),primaryImage);

@override
String toString() {
  return 'Animal(name: $name, description: $description, age: $age, gender: $gender, size: $size, gallery: $gallery, primaryImage: $primaryImage)';
}


}

/// @nodoc
abstract mixin class _$AnimalCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$AnimalCopyWith(_Animal value, $Res Function(_Animal) _then) = __$AnimalCopyWithImpl;
@override @useResult
$Res call({
 String name, String description, String age, String gender, String size, List<String> gallery, String? primaryImage
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
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? description = null,Object? age = null,Object? gender = null,Object? size = null,Object? gallery = null,Object? primaryImage = freezed,}) {
  return _then(_Animal(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,size: null == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String,gallery: null == gallery ? _self._gallery : gallery // ignore: cast_nullable_to_non_nullable
as List<String>,primaryImage: freezed == primaryImage ? _self.primaryImage : primaryImage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
