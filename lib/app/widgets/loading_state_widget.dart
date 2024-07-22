import 'package:flutter/material.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';

class LoadingStateWidget extends StatelessWidget {
  const LoadingStateWidget({
    super.key,
    this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    final loadingText = text ?? context.localizations.loading;

    return Center(
      child: Text(loadingText),
    );
  }
}
