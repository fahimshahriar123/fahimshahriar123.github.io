import 'package:cv_website/desktop/widgets/about_me.dart';
import 'package:cv_website/desktop/widgets/resume.dart';
import 'package:cv_website/desktop/widgets/skills.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Fahim ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'Shahriar'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutMe(),
            Resume(),
            Skills(),
          ],
        ),
      ),
    );
  }
}
