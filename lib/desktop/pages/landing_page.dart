import 'package:cv_website/data/methods.dart';
import 'package:cv_website/desktop/widgets/app_bar_button.dart';
import 'package:cv_website/desktop/widgets/about_me_card.dart';
import 'package:cv_website/desktop/widgets/certifications_card.dart';
import 'package:cv_website/desktop/widgets/education_card.dart';
import 'package:cv_website/desktop/widgets/experience_card.dart';
import 'package:cv_website/desktop/widgets/name_card.dart';
import 'package:cv_website/desktop/widgets/programming_languages_card.dart';
import 'package:cv_website/desktop/widgets/skills_card.dart';
import 'package:cv_website/mobile/m_widgets/m_about_me_card.dart';
import 'package:cv_website/mobile/m_widgets/m_certifications_card.dart';
import 'package:cv_website/mobile/m_widgets/m_education_card.dart';
import 'package:cv_website/mobile/m_widgets/m_experience_card.dart';
import 'package:cv_website/mobile/m_widgets/m_name_card.dart';
import 'package:cv_website/mobile/m_widgets/m_programming_languages_card.dart';
import 'package:cv_website/mobile/m_widgets/m_skills_card.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.blue,
        title: Text('Fahim Shahriar'),
        actions: [
          AppBarButton(pageName: '/home', title: 'Home'),
          AppBarTextButton(link: 'https://fahimshahriar1.medium.com'),
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, value, child) {
                return Icon(value ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  MNameCard(),
                  MAboutMeCard(),
                  MEducationCard(),
                  MSkillsCard(),
                  MProgrammingLanguagesCard(),
                  MExperienceCard(),
                  MCertificationsCard(),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
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
            );
          }
        },
      ),
    );
  }
}
