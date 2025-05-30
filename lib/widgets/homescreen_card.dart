import 'package:flutter/material.dart';

class HomescreenCard extends StatelessWidget {
  const HomescreenCard({
    super.key,
    required this.title,
    required this.description,
    required this.nextPage,
    this.image,
    this.additionalWidget,
    this.button,
    this.buttonText,
  });

  final String title;
  final String description;
  final Widget? nextPage;
  final String? image;
  final List<Widget>? additionalWidget;
  final ElevatedButton? button;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Row(
        children: [
          //if (additionalWidget != null) ...additionalWidget!,
          CircleAvatar(
            backgroundImage: AssetImage(image!),
            radius: 200.0,
          ),
          Column(
            children: [
              Text(title),
              Text(description),
              if (button != null)
                button!
              else if (nextPage != null)
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nextPage!),
                    );
                  },
                  child: Text(buttonText!),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
