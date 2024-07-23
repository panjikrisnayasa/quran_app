import 'package:flutter_test/flutter_test.dart';
import 'package:quran_app/app/data/epistle/model/epistle_details_response.dart';
import 'package:quran_app/features/epistle_details/verse_list/widgets/verse_card.dart';

import '../../../../utils/test_app.dart';

void main() {
  testWidgets('VerseCard should show correct content', (tester) async {
    await tester.pumpScreen();

    expect(find.text('1:2'), findsOneWidget);
    expect(find.text('arabic'), findsOneWidget);
    expect(find.text('turkish'), findsOneWidget);
    expect(find.text('indonesian'), findsOneWidget);
  });
}

extension _WidgetTesterExtension on WidgetTester {
  Future<void> pumpScreen() async {
    binding.platformDispatcher.textScaleFactorTestValue = 0.1;

    await pumpWidget(
      const TestApp(
        child: VerseCard(verse: _verse),
      ),
    );

    await pumpAndSettle();
  }
}

const _verse = Verse(
  id: 2,
  number: 2,
  arabic: 'arabic',
  indonesian: 'indonesian',
  surah: 1,
  turkish: 'turkish',
);
