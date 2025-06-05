import 'package:cv_website/widgets/app_bar_button.dart';
import 'package:cv_website/widgets/about_me_card.dart';
import 'package:cv_website/widgets/certifications_card.dart';
import 'package:cv_website/widgets/education_card.dart';
import 'package:cv_website/widgets/experience_card.dart';
import 'package:cv_website/widgets/name_card.dart';
import 'package:cv_website/widgets/programming_languages_card.dart';
import 'package:cv_website/widgets/skills_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.blue,
        title: Text('Fahim Shahriar'),
        actions: [
          AppBarButton(pageName: '/home', title: 'Home'),
          AppBarTextButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NameCard(),
            AboutMeCard(),
            EducationCard(),
            SkillsCard(),
            ProgrammingLanguagesCard(),
            ExperienceCard(),
            CertificationsCard(),
          ],
        ),
      ),
    );
  }
}

launchURL() async {
   final Uri url = Uri.parse('https://fahimshahriar1.medium.com');
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }
}
