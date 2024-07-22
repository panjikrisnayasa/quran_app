import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/data/interpretation/model/interpretation_response.dart';
import 'package:quran_app/app/network/http_client.dart';

class InterpretationRepository {
  InterpretationRepository(
    this._httpClient,
  );

  static final provider = Provider((ref) {
    return InterpretationRepository(
      ref.watch(HttpClient.provider),
    );
  });

  final HttpClient _httpClient;

  Future<InterpretationResponse> getInterpretationDetails({
    required int epistleNumber,
  }) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: '/tafsir/$epistleNumber',
    );

    return InterpretationResponse.fromJson(response);
  }
}
