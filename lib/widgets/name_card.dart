import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cv_website/pages/test_next_page.dart';
import 'package:flutter/material.dart';

const colorizeColors = [Colors.purple, Colors.blue, Colors.yellow, Colors.red];

const colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
); //Need to change the font

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Fahim.webp'),
            radius: 150.0,
          ),
          Expanded(child: SizedBox()),
          Flexible(
            child: Column(
              children: [
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Fahim Shahriar',
                      textStyle: colorizeTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                ),
                Text('(Description Here)'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TestNextPage()),
                    );
                  },
                  child: Text('Download CV'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
