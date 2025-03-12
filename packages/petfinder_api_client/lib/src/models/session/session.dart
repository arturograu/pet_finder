import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';

@freezed
sealed class Session with _$Session {
  const factory Session.empty() = EmptySession;

  const factory Session.active({
    required DateTime expiresIn,
    required String accessToken,
  }) = ActiveSession;
}
