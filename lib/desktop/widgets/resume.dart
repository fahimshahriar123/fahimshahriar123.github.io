import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/custom_card.dart';
import 'package:cv_website/desktop/widgets/resume_timeline.dart';
import 'package:flutter/material.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(text: 'Resume'),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.school, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'Education',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            ResumeTimeline(
              timeline: '2024 - Present',
              instituteName: 'United International University, Dhaka',
              major: 'Bachelor of Science in Computer Science and Engineering',
            ),
            ResumeTimeline(
              timeline: '2020 - 2024',
              instituteName: 'Chattogram Port College, Chattogram',
              major: 'Science',
            ),
            ResumeTimeline(
              timeline: '2014 - 2020',
              instituteName: 'Govt. Muslim High School, Chattogram',
              major: 'Science',
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(Icons.work, color: Colors.blue),
                SizedBox(width: 10),
                Text(
                  'Experience',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            ResumeTimeline(
              timeline: 'Dec 2019 - Sep 2022',
              instituteName: 'Crisis Entertainment Ltd.',
              major: 'Community Manager',
            ),
            ResumeTimeline(
              timeline: 'Nov 2021 - Sep 2022',
              instituteName: 'EXEAIO',
              major: 'Game Developer',
            ),
            ResumeTimeline(
              timeline: 'Apr 2025 - Present',
              instituteName: 'AppLink',
              major: 'Campus Ambassador',
            ),
          ],
        ),
      ),
    );
  }
}
