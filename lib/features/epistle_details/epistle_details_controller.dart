import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/app/data/epistle/epistle_repository.dart';
import 'package:quran_app/app/data/epistle/model/epistle_details_response.dart';

part 'epistle_details_controller.freezed.dart';

class EpistleDetailsController extends StateNotifier<EpistleDetailsUiState> {
  EpistleDetailsController(
    this._epistleRepository,
  ) : super(const EpistleDetailsUiState());

  static final provider = StateNotifierProvider.autoDispose<
      EpistleDetailsController, EpistleDetailsUiState>(
    (ref) => EpistleDetailsController(
      ref.watch(EpistleRepository.provider),
    ),
  );

  final EpistleRepository _epistleRepository;

  int _number = 0;

  Future<void> onScreenLoaded({
    required int number,
  }) async {
    _number = number;

    await _getEpistleDetails();
  }

  Future<void> onReload() async {
    await _getEpistleDetails();
  }

  Future<void> _getEpistleDetails() async {
    state = state.copyWith(detailsUiState: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _epistleRepository.getEpistleDetails(number: _number),
    );

    if (!mounted) return;

    state = state.copyWith(detailsUiState: result);
  }
}

@freezed
class EpistleDetailsUiState with _$EpistleDetailsUiState {
  const factory EpistleDetailsUiState({
    @Default(AsyncValue.loading())
    AsyncValue<EpistleDetailsResponse> detailsUiState,
  }) = _EpistleDetailsUiState;
}
