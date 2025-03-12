import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_response.freezed.dart';
part 'token_response.g.dart';

@freezed
sealed class TokenResponse with _$TokenResponse {
  const factory TokenResponse({
    required String tokenType,
    required int expiresIn,
    required String accessToken,
  }) = _TokenResponse;

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}
