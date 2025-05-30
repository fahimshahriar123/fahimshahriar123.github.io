//import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cv_website/pages/test_next_page.dart';
import 'package:cv_website/widgets/homescreen_card.dart';
import 'package:flutter/material.dart';

const colorizeColors = [Colors.purple, Colors.blue, Colors.yellow, Colors.red];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
); //Need to change the font

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fahim Shahriar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomescreenCard(
              // additionalWidget: [
              //   CircleAvatar(
              //     backgroundImage: AssetImage('assets/images/Fahim.webp'),
              //     radius: 200.0,
              //   ),
              // ],
              image: 'assets/images/Fahim.webp',
              title: 'Fahim Shahriar',
              description: '(Description Here)',
              //image: 'assets/images/Fahim.webp',
              nextPage: TestNextPage(),
              buttonText: 'Download CV',
            ),
          ],
        ),
      ),
    );
  }
}
