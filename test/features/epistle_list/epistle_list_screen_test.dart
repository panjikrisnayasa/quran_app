import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quran_app/app/data/epistle/epistle_repository.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/features/epistle_list/epistle_list_screen.dart';
import 'package:quran_app/features/epistle_list/widgets/epistle_card.dart';

import '../../utils/mock_dependencies.dart';
import '../../utils/test_app.dart';

void main() {
  setUp(() {
    initializeMocks();

    when(
      () => epistleRepository.getEpistles(),
    ).thenAnswer(
      (_) async => _epistleResponseList,
    );
  });

  testWidgets(
      'EpistleListScreen should show correct content when all data loaded successfully',
      (tester) async {
    await tester.pumpScreen();

    expect(find.text('Quran App'), findsOneWidget);
    expectEpistleListFound();

    verify(
      () => epistleRepository.getEpistles(),
    );
  });

  testWidgets('Push screen when tap on an epistle card', (tester) async {
    await tester.pumpScreen();

    await tester.tap(find.byKey(const Key('epistle_item_1')));

    verifyInOrder([
      () => epistleRepository.getEpistles(),
      () => navigatorObserver.didPush(any(), any()),
    ]);
  });

  testWidgets('Search and find out the epistle', (tester) async {
    await tester.pumpScreen();

    await tester.enterText(_searchField, '1');
    await tester.pumpAndSettle();

    expect(find.byType(EpistleCard), findsOneWidget);
    expect(find.text('1. latinName'), findsOneWidget);

    verify(
      () => epistleRepository.getEpistles(),
    );
  });

  testWidgets('Search epistle but got no data', (tester) async {
    await tester.pumpScreen();

    await tester.enterText(_searchField, '12');
    await tester.pumpAndSettle();

    expectEpistleListNotFound();
    expect(find.text('Tidak ada data Surat'), findsOneWidget);

    verify(
      () => epistleRepository.getEpistles(),
    );
  });

  testWidgets(
      'EpistleListScreen should show correct content when got error and reload the screen when press Try Again button',
      (tester) async {
    when(
      () => epistleRepository.getEpistles(),
    ).thenThrow(Exception());

    await tester.pumpScreen();

    expectEpistleListNotFound();
    expect(find.text('Gagal mengambil data'), findsOneWidget);
    expect(_tryAgainButton, findsOneWidget);

    when(
      () => epistleRepository.getEpistles(),
    ).thenAnswer(
      (_) async => _epistleResponseList,
    );

    await tester.tap(_tryAgainButton);
    await tester.pumpAndSettle();

    expectEpistleListFound();

    verify(
      () => epistleRepository.getEpistles(),
    ).called(2);
  });

  testWidgets(
      'EpistleListScreen should show correct content when the list data is empty',
      (tester) async {
    when(
      () => epistleRepository.getEpistles(),
    ).thenAnswer(
      (_) async => [],
    );

    await tester.pumpScreen();

    expectEpistleListNotFound();
    expect(find.text('Tidak ada data Surat'), findsOneWidget);

    verify(
      () => epistleRepository.getEpistles(),
    );
  });
}

void expectEpistleListFound() {
  expect(_epistleList, findsOneWidget);
  expect(find.byType(EpistleCard), findsWidgets);
}

void expectEpistleListNotFound() {
  expect(_epistleList, findsNothing);
  expect(find.byType(EpistleCard), findsNothing);
}

void expectEpistleItem({
  required int number,
  required Matcher matcher,
}) {
  expect(
    find.byKey(Key('epistle_item_$number')),
    matcher,
  );
}

extension _WidgetTesterExtension on WidgetTester {
  Future<void> pumpScreen() async {
    binding.platformDispatcher.textScaleFactorTestValue = 0.1;

    await pumpWidget(
      TestApp(
        overrides: [
          EpistleRepository.provider.overrideWithValue(epistleRepository),
        ],
        navigatorObservers: [navigatorObserver],
        child: const EpistleListScreen(),
      ),
    );

    await pumpAndSettle();
  }
}

final _epistleList = find.byKey(const Key('epistle_list'));
final _tryAgainButton = find.descendant(
  of: find.byType(ElevatedButton),
  matching: find.text('Coba Lagi'),
);
final _searchField = find.byKey(const Key('search_field'));

final _epistleResponseList = <EpistleResponse>[
  const EpistleResponse(
    latinName: 'latinName',
    number: 1,
    name: 'name',
    description: 'description',
    audio: 'audio',
    meaning: 'meaning',
    numberOfVerses: 12,
    placeOfDescent: 'placeOfDescent',
  ),
  const EpistleResponse(
    latinName: 'latinName2',
    number: 2,
    name: 'name2',
    description: 'description2',
    audio: 'audio2',
    meaning: 'meaning2',
    numberOfVerses: 22,
    placeOfDescent: 'placeOfDescent2',
  ),
];
