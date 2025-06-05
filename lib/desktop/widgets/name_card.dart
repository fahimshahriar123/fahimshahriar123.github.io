import 'package:cv_website/desktop/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // The following stack is for the image on each card and for the shadow.
              // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
              // Why? Cause normally, the shadow is the same size as the image.
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 80.0,
                          offset: Offset(100, 100),
                          color: Colors.black87,
                          //spreadRadius: 20.0,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile_picture.webp'),
                    radius: 150.0,
                  ),
                ],
              ),
              Flexible(child: SizedBox(width: 250.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fahim Shahriar',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(fontSize: 25.0, color: Colors.grey),
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
                  //SizedBox(height: 15.0),
                  // ElevatedButton(
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.black,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) {
                  //           return TestNextPage();
                  //         },
                  //       ),
                  //     );
                  //   },
                  //   child: Text(
                  //     'Download CV',
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
