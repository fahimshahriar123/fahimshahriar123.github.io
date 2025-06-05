import 'package:flutter/material.dart';

class MAboutMeCard extends StatelessWidget {
  const MAboutMeCard({super.key});

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
                  'About Me',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
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
                          blurRadius: 80.0,
                          offset: Offset(100, 100),
                          color: Colors.black87,
                          spreadRadius: 30.0,
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
              SizedBox(height: 30.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
