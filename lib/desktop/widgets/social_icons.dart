import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialIcons extends StatelessWidget {
  const SocialIcons({
    super.key,
    required this.link,
    required this.icon,
  });

  final String link;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
          onPressed: () async {
            await launchUrl(
              Uri.parse(link),
            );
          },
          icon: FaIcon(icon));
  }
}
