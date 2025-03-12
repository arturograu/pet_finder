import 'package:animals_repository/animals_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_finder/counter/counter.dart';
import 'package:pet_finder/l10n/l10n.dart';

class App extends StatelessWidget {
  const App({required AnimalsRepository animalsRepository, super.key})
    : _animalsRepository = animalsRepository;

  final AnimalsRepository _animalsRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: _animalsRepository,
      child: const _AppView(),
    );
  }
}

class _AppView extends StatelessWidget {
  const _AppView();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
