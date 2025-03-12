import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';

part 'animal.freezed.dart';
part 'animal.g.dart';

@freezed
sealed class Animal with _$Animal {
  const factory Animal({
    required int id,
    required String organizationId,
    required String url,
    required String type,
    required String species,
    required String age,
    required String gender,
    required String size,
    required String name,
    required List<Photo> photos,
    required String status,
    required DateTime publishedAt,
    String? coat,
    String? description,
  }) = _Animal;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);
}
