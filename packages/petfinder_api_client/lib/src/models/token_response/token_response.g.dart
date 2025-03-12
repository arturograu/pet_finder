// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokenResponse _$TokenResponseFromJson(Map<String, dynamic> json) =>
    _TokenResponse(
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
      accessToken: json['access_token'] as String,
    );

Map<String, dynamic> _$TokenResponseToJson(_TokenResponse instance) =>
    <String, dynamic>{
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
      'access_token': instance.accessToken,
    };
