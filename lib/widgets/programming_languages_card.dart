import 'package:cv_website/widgets/individual%20cards/ind_programming_languages_card.dart';
import 'package:flutter/material.dart';

class ProgrammingLanguagesCard extends StatelessWidget {
  const ProgrammingLanguagesCard({super.key});

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
                  'Programming Languages',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  // The following stack is for the image on each card and for the shadow.
                  // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
                  // Why? Cause normally, the shadow is the same size as the image.
                  Expanded(
                    child: Wrap(
                      children: [
                        IndProgrammingLanguagesCard(
                          image: 'assets/images/logos/logo_dart.webp',
                          scale: 3,
                        ),
                        IndProgrammingLanguagesCard(
                          image: 'assets/images/logos/logo_c++.webp',
                          scale: 10,
                        ),
                        IndProgrammingLanguagesCard(
                          image: 'assets/images/logos/logo_c.webp',
                          scale: 10,
                        ),
                      ],
                    ),
                  ),

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
                              spreadRadius: 1.0,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/icons/icon_coding.webp',
                        scale: 4.0,
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
