import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';
import 'package:quran_app/features/epistle_details/description/description_screen.dart';
import 'package:quran_app/features/epistle_details/epistle_details_controller.dart';
import 'package:quran_app/features/epistle_details/verse_list/verse_list_screen.dart';

class EpistleDetailsScreen extends ConsumerStatefulWidget {
  const EpistleDetailsScreen({
    super.key,
    required this.number,
    required this.latinName,
  });

  final int number;
  final String latinName;

  @override
  ConsumerState<EpistleDetailsScreen> createState() =>
      _EpistleDetailsScreenState();
}

class _EpistleDetailsScreenState extends ConsumerState<EpistleDetailsScreen> {
  final _controller = EpistleDetailsController.provider;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(_controller.notifier).onScreenLoaded(number: widget.number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text(
              '${widget.number}. ${widget.latinName}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            foregroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                Tab(text: context.localizations.description),
                Tab(text: context.localizations.verse),
              ],
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: TabBarView(
          children: [
            const DescriptionScreen(),
            VerseListScreen(epistleNumber: widget.number),
          ],
        ),
      ),
    );
  }
}
