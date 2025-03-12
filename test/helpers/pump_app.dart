import 'package:animals_repository/animals_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_finder/l10n/l10n.dart';

class MockAnimalsRepository extends Mock implements AnimalsRepository {}

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget, {AnimalsRepository? animalsRepository}) {
    return pumpWidget(
      RepositoryProvider.value(
        value: animalsRepository ?? MockAnimalsRepository(),
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: widget,
        ),
      ),
    );
  }
}
