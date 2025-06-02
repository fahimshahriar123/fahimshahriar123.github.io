import 'package:cv_website/widgets/about_me_card.dart';
import 'package:cv_website/widgets/certifications_card.dart';
import 'package:cv_website/widgets/name_card.dart';
import 'package:cv_website/widgets/skills_card.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fahim Shahriar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NameCard(),
            AboutMeCard(),
            SkillsCard(),
            CertificationsCard(),
          ],
        )
      ),
    );
  }
}