import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MIndCertificationCard extends StatelessWidget {
  const MIndCertificationCard({
    super.key,
    required this.image,
    required this.certification,
    required this.certificationName,
    this.scale,
    this.buttonText,
    this.buttonLink,
  });

  final List<String> image;
  final String certification;
  final String certificationName;
  final double? scale;
  final String? buttonText;
  final String? buttonLink;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        0.0,
        0.0,
        0.0,
        20.0,
      ), //This padding is for the outside of the card
      child: Card(
        surfaceTintColor: Colors.black,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(
            20,
          ), //This is for the padding inside the card around the elements
          child: Column(
            children: [
              for (var i in image)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Image.asset(i, scale: scale),
                ),
              Text(
                certification,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              Text(certificationName, style: TextStyle(fontSize: 15.0)),
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
      ),
    );
  }
}
