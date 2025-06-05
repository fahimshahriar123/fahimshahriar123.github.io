import 'package:flutter/material.dart';

class MIndProgrammingLanguagesCard extends StatelessWidget {
  const MIndProgrammingLanguagesCard({
    super.key,
    required this.image,
    this.skillName,
    required this.scale,
  });

  final String image;
  final String? skillName;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),  //This padding is for the outside of the card
      child: Card(
        surfaceTintColor: Colors.black,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),  //This is for the padding inside the card around the elements
          child: Image.asset(image, scale: scale),
        ),
      ),
    );
  }
}
