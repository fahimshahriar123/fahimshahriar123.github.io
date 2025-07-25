import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/individual_certifications_card.dart';
import 'package:flutter/material.dart';

class Certifications extends StatelessWidget {
  const Certifications({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double spacing = 10;
        int cardsPerRow = maxWidth > 600 ? 2 : 1;
        double cardWidth =
            cardsPerRow < 2 ? maxWidth : (maxWidth - spacing) / 2;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(text: 'Certifications'),
            SizedBox(height: 30),
            Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children:
              [
                IndividualCertificationsCard(
                  width: cardWidth,
                  imageTitle: 'CCNA: Introduction to Networks',
                  imagePath: 'assets/images/logos/logo_ccnaitn.webp',
                  issuer: 'CISCO',
                  issueDate: 'September 2024',
                  certificateFilePath: 'assets/images/certificates/academic/certificate-ccnaItn.pdf',
                  buttonText: 'View Badge',
                  buttonLink: 'https://www.credly.com/badges/c87b73e7-7cf2-49a1-8d91-7332f2c623d5/public_url',
                ),
                IndividualCertificationsCard(
                  width: cardWidth,
                  imageTitle: 'Red Hat Certified System Administrator',
                  imagePath: 'assets/images/logos/logo_rhcsa.webp',
                  issuer: 'Center for Emerging Networks and Technologies Research (CENTeR) - UIU',
                  issueDate: 'June 2025',
                  certificateFilePath: 'assets/images/certificates/academic/certificate-rhcsa.pdf',
                ),
                IndividualCertificationsCard(
                  width: cardWidth,
                  imageTitle: 'Digital Marketing',
                  imagePath: 'assets/images/logos/logo_digitalmarketing_72.webp',
                  issuer: 'Futurenation',
                  issueDate: 'May 2025',
                  certificateFilePath: 'assets/images/certificates/academic/certificate-digitalmarketing.pdf',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
