import 'package:animals_repository/animals_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_finder/home/home.dart';

class AnimalsList extends StatelessWidget {
  const AnimalsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder:
          (context, state) => switch (state.status) {
            HomeStatus.initial || HomeStatus.loading => const _LoadingView(),
            HomeStatus.loaded => _SuccessView(animals: state.animals),
            HomeStatus.error => const _FailureView(),
          },
    );
  }
}

class _FailureView extends StatelessWidget {
  const _FailureView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Failed to load animals'));
  }
}

class _LoadingView extends StatelessWidget {
  const _LoadingView();

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class _SuccessView extends StatelessWidget {
  const _SuccessView({required this.animals});

  final List<Animal> animals;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: animals.length,
      itemBuilder: (context, index) {
        final animal = animals[index];
        return AnimalCard(
          primaryImage: animal.primaryImage,
          name: animal.name,
          status: animal.status,
        );
      },
    );
  }
}
