import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart' as api;

part 'animal.freezed.dart';

@freezed
sealed class Animal with _$Animal {
  const factory Animal({
    required String name,
    required String description,
    required String age,
    required String gender,
    required String size,
    required String status,
    required List<String> gallery,
    String? primaryImage,
  }) = _Animal;

  factory Animal.fromApi(api.Animal animal) => Animal(
    name: animal.name,
    description: animal.description ?? '',
    age: animal.age,
    gender: animal.gender,
    size: animal.size,
    status: animal.status,
    primaryImage: animal.photos.isNotEmpty ? animal.photos.first.small : null,
    gallery: animal.photos.map((photo) => photo.full).toList(),
  );
}
