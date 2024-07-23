import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quran_app/app/data/interpretation/interpretation_repository.dart';
import 'package:quran_app/app/data/interpretation/model/interpretation_response.dart';
import 'package:quran_app/features/interpretation_details/interpretation_screen.dart';

import '../../utils/mock_dependencies.dart';
import '../../utils/test_app.dart';

void main() {
  setUp(() {
    initializeMocks();

    when(
      () => interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    ).thenAnswer(
      (_) async => _interpretationResponse,
    );
  });

  testWidgets(
      'InterpretationScreen should show correct content when all data loaded successfully',
      (tester) async {
    await tester.pumpScreen();

    expect(find.text('Ayat $_verseNumber'), findsOneWidget);
    expect(find.text('interpretation2'), findsOneWidget);

    verify(
      () => interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    );
  });

  testWidgets(
      'InterpretationScreen should show correct content when got error and reload the screen when press Try Again button',
      (tester) async {
    when(
      () => interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    ).thenThrow(Exception());

    await tester.pumpScreen();

    expect(find.text('Gagal mengambil data'), findsOneWidget);
    expect(_tryAgainButton, findsOneWidget);

    when(
      () => interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    ).thenAnswer(
      (_) async => _interpretationResponse,
    );

    await tester.tap(_tryAgainButton);
    await tester.pumpAndSettle();

    expect(find.text('interpretation2'), findsOneWidget);

    verify(
      () => interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    ).called(2);
  });
}

extension _WidgetTesterExtension on WidgetTester {
  Future<void> pumpScreen() async {
    binding.platformDispatcher.textScaleFactorTestValue = 0.1;

    await pumpWidget(
      TestApp(
        overrides: [
          InterpretationRepository.provider.overrideWithValue(
            interpretationRepository,
          ),
        ],
        navigatorObservers: [navigatorObserver],
        child: const InterpretationScreen(
          epistleNumber: _epistleNumber,
          verseNumber: _verseNumber,
        ),
      ),
    );

    await pumpAndSettle();
  }
}

final _tryAgainButton = find.descendant(
  of: find.byType(ElevatedButton),
  matching: find.text('Coba Lagi'),
);

const _epistleNumber = 1;
const _verseNumber = 2;

const _interpretationResponse = InterpretationResponse(
  latinName: 'latinName',
  number: 1,
  name: 'name',
  description: 'description',
  audio: 'audio',
  meaning: 'meaning',
  numberOfVerses: 3,
  placeOfDescent: 'placeOfDescent',
  status: true,
  interpretations: [
    Interpretation(
      surah: _epistleNumber,
      id: 1,
      verse: 1,
      interpretation: 'interpretation1',
    ),
    Interpretation(
      surah: _epistleNumber,
      id: _verseNumber,
      verse: _verseNumber,
      interpretation: 'interpretation2',
    ),
    Interpretation(
      surah: _epistleNumber,
      id: 3,
      verse: 3,
      interpretation: 'interpretation3',
    ),
  ],
);
