import 'package:cv_website/mobile/m_widgets/individual%20cards/m_ind_education_card.dart';
import 'package:flutter/material.dart';

class MEducationCard extends StatelessWidget {
  const MEducationCard({super.key});

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
                  'Education',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: [
                  MIndEducationCard(
                    degreeTitle: 'Bachelor of Science',
                    subject: 'Computer Science and Engineering',
                    instituteName: 'United International University',
                    address: 'Dhaka, Bangladesh',
                    passingYear: '2028 (Expected)',
                  ),
                  MIndEducationCard(
                    degreeTitle: 'Higher Secondary Certificate',
                    subject: 'Science',
                    instituteName: 'Chattogram Port College',
                    address: 'Chattogram, Bangladesh',
                    passingYear: '2022',
                  ),
                  MIndEducationCard(
                    degreeTitle: 'Secondary School Certificate',
                    subject: 'Science',
                    instituteName: 'Govt. Muslim High School',
                    address: 'Chattogram, Bangladesh',
                    passingYear: '2020',
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
