import 'package:cv_website/desktop/widgets/circle_line.dart';
import 'package:flutter/material.dart';

class ResumeTimeline extends StatelessWidget {
  const ResumeTimeline({
    required this.timeline,
    required this.instituteName,
    required this.major,
    super.key,
  });

  final String timeline;
  final String instituteName;
  final String major;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 30),
        CircleLine(),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    timeline,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                instituteName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(major, style: TextStyle(color: Colors.blue, fontSize: 18)),
            ],
          ),
        ),
      ],
    );
  }
}
