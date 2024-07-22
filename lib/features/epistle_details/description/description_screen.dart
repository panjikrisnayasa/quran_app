import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';
import 'package:quran_app/app/widgets/error_state_widget.dart';
import 'package:quran_app/app/widgets/loading_state_widget.dart';
import 'package:quran_app/features/epistle_details/epistle_details_controller.dart';

class DescriptionScreen extends ConsumerStatefulWidget {
  const DescriptionScreen({super.key});

  @override
  ConsumerState<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends ConsumerState<DescriptionScreen> {
  final _controller = EpistleDetailsController.provider;
  final _player = AudioPlayer();

  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();

    _playerStateStreamListener();
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, child) {
        final detailsUiState =
            ref.watch(_controller.select((value) => value.detailsUiState));

        return detailsUiState.when(
          data: (data) {
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
                    Text(
                      data.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${data.number}. ${data.latinName}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      '${context.localizations.numberOfVerses}: ${data.numberOfVerses}',
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${context.localizations.placeOfDescent}: ${data.placeOfDescent}',
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${context.localizations.meaning}: ${data.meaning}',
                      style: const TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Html(
                      data: data.description,
                      shrinkWrap: true,
                      style: {
                        'body': Style(
                          margin: Margins.zero,
                          color: Colors.black54,
                        ),
                      },
                    ),
                    const SizedBox(height: 32),
                    _listenButton(data.audio),
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
    );
  }

  Widget _listenButton(String audioUrl) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: _isPlaying ? Colors.white : Colors.blue,
      ),
      onPressed: () => _playStopAudio(audioUrl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            _isPlaying ? Icons.stop_rounded : Icons.play_arrow_rounded,
            color: _isPlaying ? Colors.blue : Colors.white,
          ),
          const SizedBox(width: 4),
          Text(
            _isPlaying
                ? context.localizations.stop
                : context.localizations.listen,
            style: TextStyle(
              color: _isPlaying ? Colors.blue : Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _playStopAudio(String audioUrl) async {
    if (_isPlaying) {
      _player.stop();
    } else {
      await _player.setUrl(audioUrl);
      _player.play();
    }

    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  void _playerStateStreamListener() {
    _player.playerStateStream.listen((event) {
      if (event.processingState == ProcessingState.completed) {
        setState(() {
          _isPlaying = false;
        });
      }
    });
  }
}
