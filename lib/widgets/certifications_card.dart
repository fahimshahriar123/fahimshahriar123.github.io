import 'package:cv_website/widgets/individual_certification_card.dart';
import 'package:flutter/material.dart';

class CertificationsCard extends StatelessWidget {
  const CertificationsCard({super.key});

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
        elevation: 5.0,
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
                  IndividualCertificationCard(
                    image: [
                      'assets/images/cf_ccnaItn.webp',
                      'assets/images/cf_ccnaItn_uiu.webp',
                    ],
                    certification: 'CCNA: Introduction to Networks',
                    certificationName:
                        'From understanding network architectures and protocols to mastering IP addressing and Ethernet fundamentals, completeing this course helped me develop foundational knowledge and build your networking basics. This course also includes interactive labs and real-world scenarios to help gain practical experience in building local area networks (LANs), implementing network security measures, and configuring routers and switches.',
                    scale: 1.5, //need to remove the scale
                  ),
                  IndividualCertificationCard(
                    image: ['assets/images/cf_digitalMarketing.webp'],
                    certification: 'Futurenation: Digital Marketing',
                    certificationName:
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
