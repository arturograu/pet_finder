import 'package:animals_repository/animals_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required AnimalsRepository animalsRepository})
    : _animalsRepository = animalsRepository,
      super(const HomeState());

  final AnimalsRepository _animalsRepository;

  Future<void> fetchAnimals() async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));
      final animals = await _animalsRepository.getAnimals();
      emit(state.copyWith(status: HomeStatus.loaded, animals: animals));
    } catch (_) {
      emit(state.copyWith(status: HomeStatus.error));
    }
  }
}

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<Animal> animals,
  }) = _HomeState;
}

enum HomeStatus { initial, loading, loaded, error }
