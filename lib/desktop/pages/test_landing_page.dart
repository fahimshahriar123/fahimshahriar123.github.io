import 'package:cv_website/desktop/widgets/about_me.dart';
import 'package:cv_website/desktop/widgets/certifications.dart';
import 'package:cv_website/desktop/widgets/custom_app_bar.dart';
import 'package:cv_website/desktop/widgets/programming.dart';
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
            width: (MediaQuery.sizeOf(context).width) > 1300 ? (MediaQuery.sizeOf(context).width) * 0.64 : (MediaQuery.sizeOf(context).width),
            margin: (MediaQuery.sizeOf(context).width) > 1300 ? EdgeInsets.only(top: 55) : EdgeInsets.only(top: 0),
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 254, 255, 1),
              borderRadius: (MediaQuery.sizeOf(context).width) > 1300 ? BorderRadius.circular(30) : BorderRadius.circular(0),
            ),
            child: Column(
              children: [
                CustomAppBar(),
                SizedBox(height: 100),
                AboutMe(),
                SizedBox(height: 100),
                Resume(),
                SizedBox(height: 100),
                Skills(),
                SizedBox(height: 100),
                Programming(),
                SizedBox(height: 100),
                Certifications(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
