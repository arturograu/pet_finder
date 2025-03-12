import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_finder/home/home.dart';

import '../../helpers/helpers.dart';

class MockHomeCubit extends MockCubit<HomeState> implements HomeCubit {}

void main() {
  group('AnimalsList', () {
    late HomeCubit homeCubit;

    setUp(() {
      homeCubit = MockHomeCubit();
    });

    testWidgets('renders failure view when cubit emits error', (tester) async {
      when(
        () => homeCubit.state,
      ).thenReturn(const HomeState(status: HomeStatus.error));

      await tester.pumpApp(
        BlocProvider.value(value: homeCubit, child: const AnimalsList()),
      );

      expect(find.textContaining('Failed'), findsOneWidget);
    });

    testWidgets('renders loading view when cubit emits initial state', (
      tester,
    ) async {
      when(() => homeCubit.state).thenReturn(const HomeState());

      await tester.pumpApp(
        BlocProvider.value(value: homeCubit, child: const AnimalsList()),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders loading view when cubit emits loading state', (
      tester,
    ) async {
      when(
        () => homeCubit.state,
      ).thenReturn(const HomeState(status: HomeStatus.loading));

      await tester.pumpApp(
        BlocProvider.value(value: homeCubit, child: const AnimalsList()),
      );

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('renders success view when cubit emits loaded state', (
      tester,
    ) async {
      when(
        () => homeCubit.state,
      ).thenReturn(const HomeState(status: HomeStatus.loaded));

      await tester.pumpApp(
        BlocProvider.value(value: homeCubit, child: const AnimalsList()),
      );

      expect(find.byType(AnimalsList), findsOneWidget);
    });

    testWidgets('renders no animals found view when '
        'cubit emits loaded state with empty list', (tester) async {
      when(
        () => homeCubit.state,
      ).thenReturn(const HomeState(status: HomeStatus.loaded));

      await tester.pumpApp(
        BlocProvider.value(value: homeCubit, child: const AnimalsList()),
      );

      expect(find.textContaining('No animals found'), findsOneWidget);
    });
  });
}
