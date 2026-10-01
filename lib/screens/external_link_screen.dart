import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalLinkScreen extends StatelessWidget {
  const ExternalLinkScreen({super.key});

  static final Uri _flutterUrl = Uri.parse('https://docs.flutter.dev/');

  Future<void> _openFlutterDocs(BuildContext context) async {
    // ============================================================
    // TASK 3 TODO - Launch an external HTTPS link.
    // 1) Replace false with the launchUrl call shown below.
    // 2) Keep the provided failure handling.
    //
    // Hint:
    // final opened = await launchUrl(
    //   _flutterUrl,
    //   mode: LaunchMode.externalApplication,
    // );
    // ============================================================
    final opened = await launchUrl(
      _flutterUrl,
      mode: LaunchMode.externalApplication,
    );

    if (!opened && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open Flutter Docs.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.open_in_new, size: 72),
            const SizedBox(height: 16),
            const Text('External Navigation', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text(
              'Use url_launcher when your app needs to hand a web URL to the browser.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () => _openFlutterDocs(context),
              icon: const Icon(Icons.language),
              label: const Text('Open Flutter Docs'),
            ),
          ],
        ),
      ),
    );
  }
}
