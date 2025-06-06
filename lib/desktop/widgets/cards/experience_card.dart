//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:cv_website/desktop/widgets/card_icon.dart';
import 'package:cv_website/desktop/widgets/individual%20cards/ind_experience.dart';
import 'package:cv_website/desktop/widgets/mouse_hover.dart';
import 'package:flutter/material.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({super.key});

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
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
            //Step 1
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Experience',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //Step 3
                children: [
                  Flexible(
                    child: CardIcon(
                      height: 50,
                      width: 50,
                      blurRadius: 80,
                      offsetX: 100,
                      offsety: 150,
                      image: 'assets/images/icons/icon_workExperience.webp',
                      imageScale: 4,
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    //Step2
                    children: [
                      IndExperience(
                        companyName: 'Crisis Entertainment Ltd.',
                        designation: 'Community Manager',
                        timeline: 'Dec 2019 - Sep 2022',
                      ),
                      IndExperience(
                        companyName: 'EXEAIO',
                        designation: 'Game Developer',
                        timeline: 'Nov 2021 - Sep 2022',
                      ),
                      IndExperience(
                        companyName: 'AppLink',
                        designation: 'Campus Ambassador',
                        timeline: 'Apr 2025 - Present',
                      ),
                    ],
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
