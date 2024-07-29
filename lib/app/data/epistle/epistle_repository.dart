import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/data/epistle/model/epistle_details_response.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/app/network/http_client.dart';

class EpistleRepository {
  EpistleRepository(
    this._httpClient,
  );

  static final provider = Provider((ref) {
    return EpistleRepository(
      ref.watch(HttpClient.provider),
    );
  });

  final HttpClient _httpClient;

  Future<List<EpistleResponse>> getEpistles() async {
    final response = await _httpClient.get<List<dynamic>>(
      path: '/api/surat',
    );

    return response.map((e) => EpistleResponse.fromJson(e)).toList();
  }

  Future<EpistleDetailsResponse> getEpistleDetails({
    required int number,
  }) async {
    final response = await _httpClient.get<Map<String, dynamic>>(
      path: '/api/surat/$number',
    );

    return EpistleDetailsResponse.fromJson(response);
  }
}
