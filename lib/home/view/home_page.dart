import 'package:animals_repository/animals_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_finder/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: BlocProvider(
        create:
            (_) =>
                HomeCubit(animalsRepository: context.read<AnimalsRepository>())
                  ..fetchAnimals(),
        child: const AnimalsList(),
      ),
    );
  }
}
