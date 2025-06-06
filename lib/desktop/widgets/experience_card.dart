//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:flutter/material.dart';

class ExperienceCard extends StatefulWidget {
  const ExperienceCard({super.key});

  @override
  State<ExperienceCard> createState() => _ExperienceCardState();
}

class _ExperienceCardState extends State<ExperienceCard> {
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
              //Step 1
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  //Step 3
                  children: [
                    // The following stack is for the image on each card and for the shadow.
                    // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
                    // Why? Cause normally, the shadow is the same size as the image.
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 100.0,
                                offset: Offset(300, 100),
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/icons/icon_workExperience.webp',
                          scale: 4.0,
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
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

class IndExperience extends StatelessWidget {
  const IndExperience({
    super.key,
    required this.companyName,
    required this.designation,
    required this.timeline,
  });

  final String companyName;
  final String designation;
  final String timeline;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleLine(),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(timeline, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                companyName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(designation),
            ],
          ),
        ),
      ],
    );
  }
}

class CircleLine extends StatelessWidget {
  const CircleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            //Text('2019', style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                //border: Border.all(color: Colors.green, width: 5.0),
              ),
            ),
          ],
        ),
        Container(
          width: 5.0,
          height: 100.0,
          decoration: BoxDecoration(color: Colors.amber),
        ),
      ],
    );
  }
}
