import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';
import 'package:quran_app/app/widgets/error_state_widget.dart';
import 'package:quran_app/app/widgets/loading_state_widget.dart';
import 'package:quran_app/features/interpretation_details/interpretation_controller.dart';

class InterpretationScreen extends ConsumerStatefulWidget {
  const InterpretationScreen({
    super.key,
    required this.epistleNumber,
    required this.verseNumber,
  });

  final int epistleNumber;
  final int verseNumber;

  @override
  ConsumerState<InterpretationScreen> createState() =>
      _InterpretationScreenState();
}

class _InterpretationScreenState extends ConsumerState<InterpretationScreen> {
  final _controller = InterpretationController.provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(_controller.notifier)
          .onScreenLoaded(epistleNumber: widget.epistleNumber);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${context.localizations.verse} ${widget.verseNumber}',
          style: const TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Consumer(
          builder: (_, ref, child) {
            final detailsUiState =
                ref.watch(_controller.select((value) => value.detailsUiState));

            return detailsUiState.when(
              data: (data) {
                final interpretations = data.interpretations;
                final interpretation = interpretations.firstWhere(
                  (e) => e.verse == widget.verseNumber,
                );

                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                      right: 16,
                      bottom: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(interpretation.interpretation),
                      ],
                    ),
                  ),
                );
              },
              error: (_, __) {
                return ErrorStateWidget(
                  onRetry: ref.watch(_controller.notifier).onReload,
                );
              },
              loading: () {
                return const LoadingStateWidget();
              },
            );
          },
        ),
      ),
    );
  }
}
