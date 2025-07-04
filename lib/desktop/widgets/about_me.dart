import 'package:cv_website/desktop/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: (MediaQuery.sizeOf(context).width) > 1300 ? EdgeInsets.symmetric(horizontal: 150) : EdgeInsets.symmetric(horizontal: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_picture.webp'),
            radius: 150,
          ),
          SizedBox(width: 50),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Student',
                  style: TextStyle(fontSize: 25.0, color: Colors.black54),
                ),
                Text(
                  'Fahim Shahriar',
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  'I was born in Bangladesh and raised in Chattogram, currently living in Dhaka for my studies. Since childhood, I’ve been passionate about game development and began my journey in 8th grade by learning C programming. By 10th grade, I worked at Crisis Entertainment Ltd. on the Annihilation game project. Now, I’m focused on developing my skills, networking, and preparing for a future PhD abroad. I aspire to contribute meaningfully to my country, driven by a deep sense of purpose and passion.',
                  style: TextStyle(fontSize: 15.0, color: Colors.black54, fontWeight: FontWeight.bold),
                ),
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
          ),
        ],
      ),
    );
  }
}
