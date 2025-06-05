import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.pageName,
    required this.title,
  });

  final String pageName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, pageName);
      },
      child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
    );
  }
}

class AppBarTextButton extends StatelessWidget {
  const AppBarTextButton({super.key, required this.link});

  final String link;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await launchUrl(
              Uri.parse(link),
              mode: LaunchMode.externalApplication,
            );
      },
      child:Text(
          'Blogs',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
    );
  }
}
