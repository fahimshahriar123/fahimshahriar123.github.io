import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

double elevation = 0;

class IndividualCertificationsCard extends StatefulWidget {
  const IndividualCertificationsCard({
    super.key,
    required this.width,
    required this.imageTitle,
    required this.imagePath,
    required this.issuer,
    required this.issueDate,
    required this.certificateFilePath,
    this.buttonText,
    this.buttonLink,
  });

  final double width;
  final String imageTitle;
  final String imagePath;
  final String issuer;
  final String issueDate;
  final String certificateFilePath;
  final String? buttonText;
  final String? buttonLink;

  @override
  State<IndividualCertificationsCard> createState() =>
      _IndividualCertificationsCardState();
}

class _IndividualCertificationsCardState
    extends State<IndividualCertificationsCard> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: InkWell(
        onTap: () async {
          // final Uri baseUrl = Uri.base;
          // final String relativeAssetPath = widget.certificateFilePath;
          final Uri certificateWebUrl = Uri.base.resolve(
            widget.certificateFilePath,
          );
          await launchUrl(certificateWebUrl);
        },
        onHover: (value) {
          setState(() {
            isHovering = value;
          });
        },

        child: Card(
          elevation: isHovering == true ? 4 : 0.5,
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(widget.imagePath),
                SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.imageTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        widget.issuer,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 125, 236, 1),
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        widget.issueDate,
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                      if (widget.buttonText != null) ...{
                        SizedBox(height: 18),
                        ElevatedButton(
                          onPressed: () async {
                            await launchUrl(Uri.parse(widget.buttonLink!));
                          },
                          child: Text(
                            widget.buttonText!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      },
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
