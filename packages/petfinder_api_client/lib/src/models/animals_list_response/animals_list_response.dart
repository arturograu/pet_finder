import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';

part 'animals_list_response.freezed.dart';
part 'animals_list_response.g.dart';

@freezed
sealed class AnimalsListResponse with _$AnimalsListResponse {
  factory AnimalsListResponse({
    required List<Animal> animals,
    required Pagination pagination,
  }) = _AnimalsListResponse;

  factory AnimalsListResponse.fromJson(Map<String, dynamic> json) =>
      _$AnimalsListResponseFromJson(json);
}
