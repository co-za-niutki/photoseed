import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsDialog extends StatelessWidget {
  const SettingsDialog({super.key});

  Future<void> _launchGitHub() async {
    final Uri url = Uri.parse('https://github.com/co-za-niutki/photoseed');
    if (!await launchUrl(url)) {
      throw Exception('Nie można otworzyć $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AlertDialog(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      insetPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 24.0),
      contentPadding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      title: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/icon.png', width: 30, height: 30),
              SizedBox(width: 4),
              Text("Photoseed"),
            ],
          ),
        ],
      ),
      content: SizedBox(
        width: screenWidth,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainer,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text("text")],
          ),
        ),
      ),
      actions: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: _launchGitHub,
              child: Text(
                'GitHub',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
