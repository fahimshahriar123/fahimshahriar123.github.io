import 'package:cv_website/desktop/widgets/card_icon.dart';
import 'package:cv_website/desktop/widgets/individual%20cards/ind_programming_languages_card.dart';
import 'package:cv_website/desktop/widgets/mouse_hover.dart';
import 'package:flutter/material.dart';

class ProgrammingLanguagesCard extends StatefulWidget {
  const ProgrammingLanguagesCard({super.key});

  @override
  State<ProgrammingLanguagesCard> createState() =>
      _ProgrammingLanguagesCardState();
}

class _ProgrammingLanguagesCardState extends State<ProgrammingLanguagesCard> {
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
                  CardIcon(
                    height: 100,
                    width: 100,
                    blurRadius: 100,
                    offsetX: 300,
                    offsety: 100,
                    image: 'assets/images/icons/icon_coding.webp',
                    imageScale: 4.0,
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
