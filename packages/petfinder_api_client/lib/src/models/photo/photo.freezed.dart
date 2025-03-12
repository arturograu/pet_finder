// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Photo {

 String get small; String get medium; String get large; String get full;
/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoCopyWith<Photo> get copyWith => _$PhotoCopyWithImpl<Photo>(this as Photo, _$identity);

  /// Serializes this Photo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Photo&&(identical(other.small, small) || other.small == small)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.large, large) || other.large == large)&&(identical(other.full, full) || other.full == full));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,medium,large,full);

@override
String toString() {
  return 'Photo(small: $small, medium: $medium, large: $large, full: $full)';
}


}

/// @nodoc
abstract mixin class $PhotoCopyWith<$Res>  {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) _then) = _$PhotoCopyWithImpl;
@useResult
$Res call({
 String small, String medium, String large, String full
});




}
/// @nodoc
class _$PhotoCopyWithImpl<$Res>
    implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._self, this._then);

  final Photo _self;
  final $Res Function(Photo) _then;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? small = null,Object? medium = null,Object? large = null,Object? full = null,}) {
  return _then(_self.copyWith(
small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,full: null == full ? _self.full : full // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Photo implements Photo {
  const _Photo({required this.small, required this.medium, required this.large, required this.full});
  factory _Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

@override final  String small;
@override final  String medium;
@override final  String large;
@override final  String full;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoCopyWith<_Photo> get copyWith => __$PhotoCopyWithImpl<_Photo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Photo&&(identical(other.small, small) || other.small == small)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.large, large) || other.large == large)&&(identical(other.full, full) || other.full == full));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,small,medium,large,full);

@override
String toString() {
  return 'Photo(small: $small, medium: $medium, large: $large, full: $full)';
}


}

/// @nodoc
abstract mixin class _$PhotoCopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$PhotoCopyWith(_Photo value, $Res Function(_Photo) _then) = __$PhotoCopyWithImpl;
@override @useResult
$Res call({
 String small, String medium, String large, String full
});




}
/// @nodoc
class __$PhotoCopyWithImpl<$Res>
    implements _$PhotoCopyWith<$Res> {
  __$PhotoCopyWithImpl(this._self, this._then);

  final _Photo _self;
  final $Res Function(_Photo) _then;

/// Create a copy of Photo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? small = null,Object? medium = null,Object? large = null,Object? full = null,}) {
  return _then(_Photo(
small: null == small ? _self.small : small // ignore: cast_nullable_to_non_nullable
as String,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as String,large: null == large ? _self.large : large // ignore: cast_nullable_to_non_nullable
as String,full: null == full ? _self.full : full // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
