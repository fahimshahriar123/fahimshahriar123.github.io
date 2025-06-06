import 'package:cv_website/desktop/widgets/individual%20cards/ind_certification_card.dart';
import 'package:cv_website/desktop/widgets/mouse_hover.dart';
import 'package:flutter/material.dart';

class CertificationsCard extends StatefulWidget {
  const CertificationsCard({super.key});

  @override
  State<CertificationsCard> createState() => _CertificationsCardState();
}

class _CertificationsCardState extends State<CertificationsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: MouseHover(
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Certifications',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Wrap(
                children: [
                  IndCertificationCard(
                    image: [
                      'assets/images/certificates/academic/cf_ccnaItn.webp',
                      'assets/images/certificates/academic/cf_ccnaItn_uiu.webp',
                    ],
                    certification: 'CCNA: Introduction to Networks',
                    description:
                        'From understanding network architectures and protocols to mastering IP addressing and Ethernet fundamentals, completeing this course helped me develop foundational knowledge and build your networking basics. This course also includes interactive labs and real-world scenarios to help gain practical experience in building local area networks (LANs), implementing network security measures, and configuring routers and switches.',
                    scale: 1.5, //need to remove the scale
                    buttonText: 'View Badge',
                    buttonLink:
                        'https://www.credly.com/badges/c87b73e7-7cf2-49a1-8d91-7332f2c623d5/public_url',
                  ),
                  IndCertificationCard(
                    image: [
                      'assets/images/certificates/academic/cf_digitalMarketing.webp',
                    ],
                    certification: 'Futurenation: Digital Marketing',
                    description:
                        'This course provided me comprehensive training on essential marketing strategies and tools used in the digital world. It covers key areas such as SEO, social media marketing, content creation, email, and data analytics. The course equiped me with the skills to effectively reach and engage online audiences.',
                    scale: 1.5,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
