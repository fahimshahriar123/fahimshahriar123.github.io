import 'package:cv_website/desktop/widgets/about_me.dart';
import 'package:cv_website/desktop/widgets/custom_app_bar.dart';
import 'package:cv_website/desktop/widgets/resume.dart';
import 'package:cv_website/desktop/widgets/skills.dart';
import 'package:flutter/material.dart';
class TestLandingPage extends StatelessWidget {
  const TestLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 125, 236, 1),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: (MediaQuery.sizeOf(context).width) * 0.8,
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 254, 255, 1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                CustomAppBar(),
                AboutMe(),
                Resume(),
                Skills(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
