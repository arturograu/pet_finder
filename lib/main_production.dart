import 'package:animals_repository/animals_repository.dart';
import 'package:pet_finder/app/app.dart';
import 'package:pet_finder/bootstrap.dart';

void main() {
  bootstrap(
    ({required AnimalsRepository animalsRepository}) =>
        App(animalsRepository: animalsRepository),
  );
}
