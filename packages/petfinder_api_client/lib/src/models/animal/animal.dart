import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed
sealed class Animal with _$Animal {
  const factory Animal({
    required String id,
    required String organizationId,
    required String url,
    required String type,
    required String species,
    required String age,
    required String gender,
    required String size,
    required String coat,
    required String name,
    required String description,
    required List<Photo> photos,
    required String status,
    required DateTime publishedAt,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
