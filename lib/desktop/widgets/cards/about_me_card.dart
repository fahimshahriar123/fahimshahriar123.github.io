import 'package:cv_website/desktop/widgets/card_icon.dart';
import 'package:cv_website/desktop/widgets/mouse_hover.dart';
import 'package:flutter/material.dart';

class AboutMeCard extends StatefulWidget {
  const AboutMeCard({super.key});

  @override
  State<AboutMeCard> createState() => _AboutMeCardState();
}

class _AboutMeCardState extends State<AboutMeCard> {
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
                  'About Me',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '''I was born in Bangladesh, grew up in Chattogram. Currently, I am staying in Dhaka for educational purpose.

I was extremely interested to learn game development and have my own game published since my childhood. At 8th grade, I got an angle-like human who guided me to start working on my dream. I started learning C programming.

From that time, I started to connect game developers on Facebook. Following it, I got my first job at Crisis Entertainment Ltd. as a Community Manager when I was at 10th grade. I worked with the Annihilation game project, which was supposed to be the first battle royale game of Bangladesh. It didn't see the light for various reasons, but I gained valuable experiences. Later I worked for various projects as a game developer.

Currently I am focusing on my study, skill development and networking, as I believe that students should focus on skill development rather than trying to earn. Following this philosophy, I have joined a Campus Ambassador program and looking for more opportunities to strengthen my skills and networking. 

I am not a good student though, but I believe that I can do anything that I need to do. Thus I have a strong interest in research. Even though I am an undergrad student, I am preparing myself for pursuing a PhD degree from abroad. I know it is a tough journey, but my passion drives me everyday to be a better version of myself and achieve the goal that I wish for.

I believe that Bangladesh has gifted me a lot of things, and I have some duties for Bangladesh. Thus, I need to contribute something to the country. I am getting prepared everyday for that ultimate day and I will be there sometime, in sha Allah!''',
                    ),
                  ),
                  CardIcon(
                    height: 100,
                    width: 100,
                    blurRadius: 80,
                    offsetX: 150,
                    offsety: 100,
                    image: 'assets/images/icons/icon_aboutMe.webp',
                    imageScale: 4,
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
