import 'package:animals_repository/animals_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pet_finder/app/app.dart';
import 'package:pet_finder/home/home.dart';

class MockAnimalsRepository extends Mock implements AnimalsRepository {}

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(App(animalsRepository: MockAnimalsRepository()));
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
