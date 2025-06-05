//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:flutter/material.dart';

class MExperienceCard extends StatelessWidget {
  const MExperienceCard({super.key});

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
            //Step 1
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Experience',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
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
                          offset: Offset(150, 70),
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
              SizedBox(height: 30.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleLine(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dec 2019 - Sep 2022',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Crisis Entertainment Ltd.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text('Community Manager'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleLine(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nov 2021 - Sep 2022',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'EXEAIO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text('Game Developer'),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleLine(),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Apr 2025 - Present',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'AppLink',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text('Campus Ambassador'),
                      ],
                    ),
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
