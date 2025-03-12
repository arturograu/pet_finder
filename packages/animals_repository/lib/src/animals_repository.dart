import 'package:animals_repository/animals_repository.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart' as api;

/// {@template animals_repository}
/// Repository to manage animals data
/// {@endtemplate}
class AnimalsRepository {
  /// {@macro animals_repository}
  const AnimalsRepository({required api.PetfinderApiClient apiClient})
    : _apiClient = apiClient;

  final api.PetfinderApiClient _apiClient;

  /// Fetches a list of animals
  Future<List<Animal>> getAnimals() async {
    final response = await _apiClient.getAnimals();
    return response.animals.map(Animal.fromApi).toList();
  }
}
