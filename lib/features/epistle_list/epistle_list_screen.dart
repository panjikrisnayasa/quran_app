import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';
import 'package:quran_app/app/widgets/empty_data_widget.dart';
import 'package:quran_app/app/widgets/error_state_widget.dart';
import 'package:quran_app/app/widgets/loading_state_widget.dart';
import 'package:quran_app/features/epistle_details/epistle_details_screen.dart';
import 'package:quran_app/features/epistle_list/epistle_list_controller.dart';
import 'package:quran_app/features/epistle_list/widgets/epistle_card.dart';

class EpistleListScreen extends ConsumerStatefulWidget {
  const EpistleListScreen({super.key});

  @override
  ConsumerState<EpistleListScreen> createState() => _EpistleListScreenState();
}

class _EpistleListScreenState extends ConsumerState<EpistleListScreen> {
  final _controller = EpistleListController.provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(_controller.notifier).onScreenLoaded();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.localizations.quranApp,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: context.localizations.searchEpistleNameOrNumber,
                  hintStyle: const TextStyle(
                    color: Colors.black38,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                textInputAction: TextInputAction.search,
                onChanged: ref.read(_controller.notifier).onSearch,
              ),
            ),
            _epistlesUiState(),
          ],
        ),
      ),
    );
  }

  Widget _epistlesUiState() {
    return Expanded(
      child: Consumer(
        builder: (_, ref, child) {
          final epistlesUiState = ref.watch(
            _controller.select((value) => value.epistlesUiState),
          );

          return epistlesUiState.when(
            data: (data) {
              if (data.isEmpty) {
                return EmptyDataWidget(
                  text: context.localizations.noEpistlesData,
                );
              }

              return _epistleList(data);
            },
            error: (_, __) {
              return ErrorStateWidget(
                onRetry: ref.read(_controller.notifier).onReload,
              );
            },
            loading: () {
              return const LoadingStateWidget();
            },
          );
        },
      ),
    );
  }

  Widget _epistleList(List<EpistleResponse> data) {
    return ListView.builder(
      key: const Key('epistle_list'),
      padding: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 16),
      itemCount: data.length,
      itemBuilder: (context, index) {
        final epistle = data[index];

        return EpistleCard(
          key: Key('epistle_item_${epistle.number}'),
          epistle: epistle,
          onTap: () => _navigateToDetails(
            number: epistle.number,
            latinName: epistle.latinName,
          ),
        );
      },
    );
  }

  void _navigateToDetails({
    required int number,
    required String latinName,
  }) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EpistleDetailsScreen(
          number: number,
          latinName: latinName,
        ),
      ),
    );
  }
}
