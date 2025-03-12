import 'package:animals_repository/animals_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_finder/home/cubit/home_cubit.dart';

class MockAnimalsRepository extends Mock implements AnimalsRepository {}

void main() {
  group('HomeCubit', () {
    late MockAnimalsRepository mockAnimalsRepository;

    final animals = [
      const Animal(
        name: 'Buddy',
        status: 'Available',
        age: 'Adult',
        gender: 'Male',
        size: 'Large',
        description:
            'Buddy is a friendly and energetic Labrador Retriever. He loves to play fetch and go for long walks.',
        gallery: [],
      ),
    ];

    setUp(() {
      mockAnimalsRepository = MockAnimalsRepository();
      when(
        () => mockAnimalsRepository.getAnimals(),
      ).thenAnswer((_) async => animals);
    });

    test('initial state is HomeState', () {
      expect(
        HomeCubit(animalsRepository: mockAnimalsRepository).state,
        equals(const HomeState()),
      );
    });

    group('fetchAnimals', () {
      blocTest<HomeCubit, HomeState>(
        'emits [HomeState(status: HomeStatus.loading), '
        'HomeState(status: HomeStatus.loaded, animals: animals)] when '
        'fetchAnimals is called',
        build: () => HomeCubit(animalsRepository: mockAnimalsRepository),
        act: (cubit) => cubit.fetchAnimals(),
        expect:
            () => [
              const HomeState(status: HomeStatus.loading),
              HomeState(status: HomeStatus.loaded, animals: animals),
            ],
      );

      blocTest<HomeCubit, HomeState>(
        'emits [HomeState(status: HomeStatus.loading), '
        'HomeState(status: HomeStatus.error)] when '
        'fetchAnimals fails',
        build: () {
          when(() => mockAnimalsRepository.getAnimals()).thenThrow(Exception());
          return HomeCubit(animalsRepository: mockAnimalsRepository);
        },
        act: (cubit) => cubit.fetchAnimals(),
        expect:
            () => [
              const HomeState(status: HomeStatus.loading),
              const HomeState(status: HomeStatus.error),
            ],
      );
    });
  });
}
