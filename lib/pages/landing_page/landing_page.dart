import 'package:cv_website/pages/test_next_page.dart';
import 'package:cv_website/widgets/homescreen_card.dart';
import 'package:cv_website/widgets/homescreen_card_reverse.dart';
import 'package:cv_website/widgets/name_card.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fahim Shahriar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // HomescreenCard(
            //   additionalWidget: CircleAvatar(
            //     backgroundImage: AssetImage('assets/images/Fahim.webp'),
            //     radius: 200.0,
            //   ),

            //   title: 'Fahim Shahriar',
            //   description: '(Description Here)',
            //   nextPage: TestNextPage(),
            //   buttonText: 'Download CV',
            // ),
            NameCard(),
            SizedBox(height: 5.0),
            HomescreenCardReverse(
              title: 'Skills',
              description: 'Test',
              nextPage: TestNextPage(),
              buttonText: 'yew',
            ),
          ],
        ),
      ),
    );
  }
}
