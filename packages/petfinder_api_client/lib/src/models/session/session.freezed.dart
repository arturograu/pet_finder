// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Session {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Session);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Session()';
}


}

/// @nodoc
class $SessionCopyWith<$Res>  {
$SessionCopyWith(Session _, $Res Function(Session) __);
}


/// @nodoc


class EmptySession implements Session {
  const EmptySession();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmptySession);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Session.empty()';
}


}




/// @nodoc


class ActiveSession implements Session {
  const ActiveSession({required this.expiresIn, required this.accessToken});
  

 final  DateTime expiresIn;
 final  String accessToken;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActiveSessionCopyWith<ActiveSession> get copyWith => _$ActiveSessionCopyWithImpl<ActiveSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActiveSession&&(identical(other.expiresIn, expiresIn) || other.expiresIn == expiresIn)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken));
}


@override
int get hashCode => Object.hash(runtimeType,expiresIn,accessToken);

@override
String toString() {
  return 'Session.active(expiresIn: $expiresIn, accessToken: $accessToken)';
}


}

/// @nodoc
abstract mixin class $ActiveSessionCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory $ActiveSessionCopyWith(ActiveSession value, $Res Function(ActiveSession) _then) = _$ActiveSessionCopyWithImpl;
@useResult
$Res call({
 DateTime expiresIn, String accessToken
});




}
/// @nodoc
class _$ActiveSessionCopyWithImpl<$Res>
    implements $ActiveSessionCopyWith<$Res> {
  _$ActiveSessionCopyWithImpl(this._self, this._then);

  final ActiveSession _self;
  final $Res Function(ActiveSession) _then;

/// Create a copy of Session
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? expiresIn = null,Object? accessToken = null,}) {
  return _then(ActiveSession(
expiresIn: null == expiresIn ? _self.expiresIn : expiresIn // ignore: cast_nullable_to_non_nullable
as DateTime,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
