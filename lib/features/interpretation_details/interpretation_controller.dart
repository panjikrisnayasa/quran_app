import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/app/data/interpretation/interpretation_repository.dart';
import 'package:quran_app/app/data/interpretation/model/interpretation_response.dart';

part 'interpretation_controller.freezed.dart';

class InterpretationController extends StateNotifier<InterpretationUiState> {
  InterpretationController(
    this._interpretationRepository,
  ) : super(const InterpretationUiState());

  static final provider = StateNotifierProvider.autoDispose<
      InterpretationController, InterpretationUiState>(
    (ref) => InterpretationController(
      ref.watch(InterpretationRepository.provider),
    ),
  );

  final InterpretationRepository _interpretationRepository;

  int _epistleNumber = 0;

  Future<void> onScreenLoaded({
    required int epistleNumber,
  }) async {
    _epistleNumber = epistleNumber;

    await _getInterpretationDetails();
  }

  Future<void> onReload() async {
    await _getInterpretationDetails();
  }

  Future<void> _getInterpretationDetails() async {
    state = state.copyWith(detailsUiState: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _interpretationRepository.getInterpretationDetails(
        epistleNumber: _epistleNumber,
      ),
    );

    if (!mounted) return;

    state = state.copyWith(detailsUiState: result);
  }
}

@freezed
class InterpretationUiState with _$InterpretationUiState {
  const factory InterpretationUiState({
    @Default(AsyncValue.loading())
    AsyncValue<InterpretationResponse> detailsUiState,
  }) = _InterpretationUiState;
}
