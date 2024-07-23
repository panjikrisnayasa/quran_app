import 'package:flutter_test/flutter_test.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/features/epistle_list/widgets/epistle_card.dart';

import '../../../utils/test_app.dart';

void main() {
  testWidgets('EpistleCard should show correct content', (tester) async {
    await tester.pumpScreen();

    expect(find.text('name'), findsOneWidget);
    expect(find.text('1. latinName'), findsOneWidget);
    expect(find.text('Jumlah Ayat: 12'), findsOneWidget);
    expect(find.text('Arti: meaning'), findsOneWidget);
    expect(find.text('description'), findsOneWidget);
  });
}

extension _WidgetTesterExtension on WidgetTester {
  Future<void> pumpScreen() async {
    binding.platformDispatcher.textScaleFactorTestValue = 0.1;

    await pumpWidget(
      const TestApp(
        child: EpistleCard(epistle: _epistleResponse),
      ),
    );

    await pumpAndSettle();
  }
}

const _epistleResponse = EpistleResponse(
  latinName: 'latinName',
  number: 1,
  name: 'name',
  description: 'description',
  audio: 'audio',
  meaning: 'meaning',
  numberOfVerses: 12,
  placeOfDescent: 'placeOfDescent',
);
