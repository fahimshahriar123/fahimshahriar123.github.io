import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IndCertificationCard extends StatelessWidget {
  const IndCertificationCard({
    super.key,
    required this.image,
    required this.certification,
    required this.description,
    required this.scale,
    this.buttonText,
    this.buttonLink,
  });

  final List<String> image;
  final String certification;
  final String description;
  final double scale;
  final String? buttonText;
  final String? buttonLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: Card(
        surfaceTintColor: Colors.black,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Row(
            children: [
              Column(
                children: [
                  for (var i in image)
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, bottom: 8.0),
                      child: Image.asset(i, scale: scale),
                    ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      certification,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(description, style: TextStyle(fontSize: 15.0)),
                    SizedBox(height: 18),
                    if (buttonText != null)
                      ElevatedButton(
                        onPressed: () async {
                          await launchUrl(Uri.parse(buttonLink!));
                        },
                        child: Text(
                          buttonText!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
