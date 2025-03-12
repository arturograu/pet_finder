import 'package:animals_repository/animals_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart' as api;
import 'package:test/test.dart';

class MockPetfinderApiClient extends Mock implements api.PetfinderApiClient {}

void main() {
  group('AnimalsRepository', () {
    final testAnimals = [
      api.Animal(
        id: '1',
        organizationId: '1',
        url: 'https://api.petfinder.com/v2/animals/1',
        type: 'Dog',
        species: 'Dog',
        age: 'Adult',
        gender: 'Male',
        size: 'Large',
        coat: 'Short',
        name: 'Buddy',
        description: 'Buddy is a 5-year-old male Labrador Retriever.',
        photos: [
          const api.Photo(
            small: 'https://api.petfinder.com/v2/animals/1/photos/small',
            medium: 'https://api.petfinder.com/v2/animals/1/photos/medium',
            large: 'https://api.petfinder.com/v2/animals/1/photos/large',
            full: 'https://api.petfinder.com/v2/animals/1/photos/full',
          ),
        ],
        status: 'adoptable',
        publishedAt: DateTime.now(),
      ),
    ];

    late MockPetfinderApiClient mockPetfinderApiClient;
    late AnimalsRepository animalsRepository;

    setUp(() {
      mockPetfinderApiClient = MockPetfinderApiClient();
      animalsRepository = AnimalsRepository(apiClient: mockPetfinderApiClient);
    });

    group('getAnimals', () {
      test('returns a list of animals', () async {
        when(() => mockPetfinderApiClient.getAnimals()).thenAnswer(
          (_) async => api.AnimalsListResponse(
            animals: testAnimals,
            pagination: const api.Pagination(
              currentPage: 1,
              totalPages: 1,
              totalCount: 1,
              countPerPage: 1,
            ),
          ),
        );

        final result = await animalsRepository.getAnimals();

        expect(result, equals([...testAnimals.map(Animal.fromApi)]));
      });
    });
  });
}
