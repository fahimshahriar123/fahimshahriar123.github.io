import 'package:cv_website/desktop/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/profile_picture.webp',
            ),
            radius: 150,
          ),
          SizedBox(width: 50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Student',
                style: TextStyle(fontSize: 25.0, color: Colors.grey),
              ),
              Text(
                'Fahim Shahriar',
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '(About Me Text Here)',
                style: TextStyle(fontSize: 25.0),
              ),
              Text('Dhaka, Bangladesh'),
              Row(
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
              SizedBox(height: 10),
              ElevatedButton(onPressed: null, child: Text('Download CV')),
            ],
          ),
        ],
      ),
    );
  }
}
