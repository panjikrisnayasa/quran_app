import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran_app/app/data/epistle/epistle_repository.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';

part 'epistle_list_controller.freezed.dart';

class EpistleListController extends StateNotifier<EpistleListUiState> {
  EpistleListController(this._epistleRepository)
      : super(const EpistleListUiState());

  static final provider = StateNotifierProvider.autoDispose<
      EpistleListController, EpistleListUiState>(
    (ref) => EpistleListController(
      ref.watch(EpistleRepository.provider),
    ),
  );

  final EpistleRepository _epistleRepository;

  Future<void> onScreenLoaded() async {
    await _getPlaystation5Games();
  }

  Future<void> onReload() async {
    await _getPlaystation5Games();
  }

  Future<void> _getPlaystation5Games() async {
    state = state.copyWith(epistlesUiState: const AsyncValue.loading());

    final result = await AsyncValue.guard(
      () => _epistleRepository.getEpistles(),
    );

    if (!mounted) return;

    state = state.copyWith(epistlesUiState: result);
  }
}

@freezed
class EpistleListUiState with _$EpistleListUiState {
  const factory EpistleListUiState({
    @Default(AsyncValue.loading())
    AsyncValue<List<EpistleResponse>> epistlesUiState,
  }) = _EpistleListUiState;
}
