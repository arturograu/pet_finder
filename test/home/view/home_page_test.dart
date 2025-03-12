import 'package:flutter_test/flutter_test.dart';
import 'package:pet_finder/home/home.dart';

import '../../helpers/helpers.dart';

void main() {
  group('HomePage', () {
    testWidgets('renders AnimalsList', (tester) async {
      await tester.pumpApp(const HomePage());
      expect(find.byType(AnimalsList), findsOneWidget);
    });
  });
}
