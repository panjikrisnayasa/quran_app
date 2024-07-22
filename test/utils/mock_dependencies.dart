import 'package:flutter/material.dart';
import 'package:mocktail/mocktail.dart';
import 'package:quran_app/app/data/epistle/epistle_repository.dart';
import 'package:quran_app/app/data/interpretation/interpretation_repository.dart';
import 'package:quran_app/app/network/http_client.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

final navigatorObserver = MockNavigatorObserver();

class MockHttpClient extends Mock implements HttpClient {}

final httpClient = MockHttpClient();

class MockEpistleRepository extends Mock implements EpistleRepository {}

final epistleRepository = MockEpistleRepository();

class MockInterpretationRepository extends Mock
    implements InterpretationRepository {}

final interpretationRepository = MockInterpretationRepository();

void initializeMocks() {
  reset(navigatorObserver);
  reset(httpClient);
  reset(epistleRepository);
  reset(interpretationRepository);
}
