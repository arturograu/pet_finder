import 'dart:async';
import 'dart:developer';

import 'package:animals_repository/animals_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:petfinder_api_client/petfinder_api_client.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(
  FutureOr<Widget> Function({required AnimalsRepository animalsRepository})
  builder,
) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await dotenv.load();
  final petfinderApiClient = PetfinderApiClient(
    clientId: _getPetfinderClientId(),
    clientSecret: _getPetfinderClientSecret(),
  );
  final animalsRepository = AnimalsRepository(apiClient: petfinderApiClient);

  runApp(await builder(animalsRepository: animalsRepository));
}

String _getPetfinderClientId() {
  final clientId = dotenv.env['PETFINDER_CLIENT_ID'];
  if (clientId == null) {
    throw Exception('PETFINDER_CLIENT_ID is not set');
  }
  return clientId;
}

String _getPetfinderClientSecret() {
  final clientSecret = dotenv.env['PETFINDER_CLIENT_SECRET'];
  if (clientSecret == null) {
    throw Exception('PETFINDER_CLIENT_SECRET is not set');
  }
  return clientSecret;
}
