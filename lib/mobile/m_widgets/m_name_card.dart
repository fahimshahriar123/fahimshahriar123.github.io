import 'package:cv_website/desktop/widgets/card_icon.dart';
import 'package:cv_website/desktop/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MNameCard extends StatelessWidget {
  const MNameCard({super.key});

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
              CardIcon(
                height: 200,
                width: 200,
                blurRadius: 80,
                offsetX: 100,
                offsety: 100,
                coverImage: 'assets/images/profile_picture.webp',
                coverImageRadius: 150,
              ),
              SizedBox(height: 30.0),
              Text(
                'Fahim Shahriar',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'Student',
                style: TextStyle(fontSize: 25.0, color: Colors.grey),
              ),
              Text('Dhaka, Bangladesh'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcons(
                    link: 'mailto:fahimshahriar188@gmail.com',
                    icon: FontAwesomeIcons.envelope,
                  ),
                  SocialIcons(
                    link: 'https://www.linkedin.com/in/fahimshahriar1/',
                    icon: FontAwesomeIcons.linkedin,
                  ),
                  SocialIcons(
                    link: 'https://github.com/fahimshahriar123',
                    icon: FontAwesomeIcons.github,
                  ),
                  SocialIcons(
                    link: 'https://facebook.com/SulfuricFahim',
                    icon: FontAwesomeIcons.facebook,
                  ),
                  SocialIcons(
                    link: 'https://x.com/SulfuricFahim',
                    icon: FontAwesomeIcons.xTwitter,
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
