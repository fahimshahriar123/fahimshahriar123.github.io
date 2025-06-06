import 'package:cv_website/desktop/widgets/individual%20cards/ind_education_card.dart';
import 'package:flutter/material.dart';

class EducationCard extends StatefulWidget {
  const EducationCard({super.key});

  @override
  State<EducationCard> createState() => _EducationCardState();
}

class _EducationCardState extends State<EducationCard> {
  double _elevation = 5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: MouseRegion(
        onEnter: (event) {
          _elevation = 30.0;
          setState(() {});
        },
        onExit: (event) {
          _elevation = 5;
          setState(() {});
        },
        child: Card(
          elevation: _elevation,
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
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: IndEducationCard(
                        degreeTitle: 'Bachelor of Science',
                        subject: 'Computer Science and Engineering',
                        instituteName: 'United International University',
                        address: 'Dhaka, Bangladesh',
                        passingYear: '2028 (Expected)',
                      ),
                    ),
                    Expanded(
                      child: IndEducationCard(
                        degreeTitle: 'Higher Secondary Certificate',
                        subject: 'Science',
                        instituteName: 'Chattogram Port College',
                        address: 'Chattogram, Bangladesh',
                        passingYear: '2022',
                      ),
                    ),
                    Expanded(
                      child: IndEducationCard(
                        degreeTitle: 'Secondary School Certificate',
                        subject: 'Science',
                        instituteName: 'Govt. Muslim High School',
                        address: 'Chattogram, Bangladesh',
                        passingYear: '2020',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
