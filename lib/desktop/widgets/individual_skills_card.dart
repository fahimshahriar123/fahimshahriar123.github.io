import 'package:flutter/material.dart';

class IndividualSkillsCard extends StatelessWidget {
  const IndividualSkillsCard({
    super.key,
    required this.width,
    required this.imageTitle,
    required this.imagePath,
  });

  final double width;
  final String imageTitle;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            children: [
              Image.asset(imagePath),
              SizedBox(width: 10),
              Text(imageTitle, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
