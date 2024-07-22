import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:quran_app/app/data/epistle/model/epistle_response.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';

class EpistleCard extends StatelessWidget {
  const EpistleCard({
    super.key,
    required this.epistle,
    this.onTap,
  });

  final EpistleResponse epistle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 12,
            bottom: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                epistle.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                textAlign: TextAlign.end,
              ),
              const SizedBox(height: 8),
              Text(
                epistle.latinName,
              ),
              const SizedBox(height: 8),
              Text(
                '${context.localizations.numberOfVerses}: ${epistle.numberOfVerses}',
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '${context.localizations.meaning}: ${epistle.meaning}',
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 8),
              Html(
                data: epistle.description,
                shrinkWrap: true,
                style: {
                  'body': Style(
                    margin: Margins.zero,
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                    color: Colors.black54,
                  ),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
