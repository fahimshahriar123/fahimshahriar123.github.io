import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Made with ', style: TextStyle(fontSize: 18)),
                WidgetSpan(
                  child: Image.asset(
                    'assets/images/logos/logo_flutter_full.webp',
                    scale: 8,
                  ),
                ),
                TextSpan(
                  text: ' by Fahim Shahriar',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Source code is available '),
                TextSpan(
                  text: 'here',
                  style: TextStyle(color: Colors.blue),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () async {
                          await launchUrl(
                            Uri.parse(
                              'https://github.com/fahimshahriar123/fahimshahriar123.github.io',
                            ),
                          );
                        },
                ),
                TextSpan(
                  text:
                      ' with NO permission to copy, distribute, modify, or use this code for any purpose.',
                ),
              ],
            ),
          ),
          Text('© Fahim Shahriar 2025'),
          Text(
            'All rights reserved.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
