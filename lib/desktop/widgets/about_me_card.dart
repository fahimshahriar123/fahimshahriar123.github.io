import 'package:flutter/material.dart';

class AboutMeCard extends StatefulWidget {
  const AboutMeCard({super.key});

  @override
  State<AboutMeCard> createState() => _AboutMeCardState();
}

class _AboutMeCardState extends State<AboutMeCard> {
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
                    'About Me',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
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
                                blurRadius: 80.0,
                                offset: Offset(150, 100),
                                color: Colors.black87,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/icons/icon_aboutMe.webp',
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
      ),
    );
  }
}
