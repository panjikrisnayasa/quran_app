import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/data/epistle/model/epistle_details_response.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';
import 'package:quran_app/app/widgets/empty_data_widget.dart';
import 'package:quran_app/app/widgets/error_state_widget.dart';
import 'package:quran_app/app/widgets/loading_state_widget.dart';
import 'package:quran_app/features/epistle_details/epistle_details_controller.dart';
import 'package:quran_app/features/epistle_details/verse_list/widgets/verse_card.dart';
import 'package:quran_app/features/interpretation_details/interpretation_screen.dart';

class VerseListScreen extends ConsumerStatefulWidget {
  const VerseListScreen({
    super.key,
    required this.epistleNumber,
  });

  final int epistleNumber;

  @override
  ConsumerState<VerseListScreen> createState() => _VerseListScreenState();
}

class _VerseListScreenState extends ConsumerState<VerseListScreen> {
  final _controller = EpistleDetailsController.provider;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              hintText: context.localizations.searchVerseNumber,
              hintStyle: const TextStyle(
                color: Colors.black38,
              ),
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.search,
            onChanged: ref.read(_controller.notifier).onSearch,
          ),
        ),
        Expanded(
          child: Consumer(
            builder: (_, ref, child) {
              final detailsUiState = ref
                  .watch(_controller.select((value) => value.detailsUiState));

              return detailsUiState.when(
                data: (data) {
                  final verses = data.verses;

                  if (verses.isEmpty) {
                    return EmptyDataWidget(
                      text: context.localizations.noVersesData,
                    );
                  }

                  return _verseList(verses);
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
      ],
    );
  }

  Widget _verseList(List<Verse> verses) {
    return ListView.builder(
      key: const Key('verse_list'),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      itemCount: verses.length,
      itemBuilder: (context, index) {
        final verse = verses[index];

        return VerseCard(
          key: Key('verse_item_${verse.number}'),
          verse: verse,
          onTap: () => _navigateToInterpretation(
            epistleNumber: widget.epistleNumber,
            verseNumber: verse.number,
          ),
        );
      },
    );
  }

  void _navigateToInterpretation({
    required int epistleNumber,
    required int verseNumber,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => InterpretationScreen(
          epistleNumber: epistleNumber,
          verseNumber: verseNumber,
        ),
      ),
    );
  }
}
