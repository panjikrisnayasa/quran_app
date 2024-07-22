import 'package:flutter/material.dart';
import 'package:quran_app/app/localizations/localizations_extension.dart';

class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    super.key,
    this.onRetry,
  });

  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.localizations.failedToFetchData),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: onRetry,
            child: Text(context.localizations.tryAgain),
          ),
        ],
      ),
    );
  }
}
