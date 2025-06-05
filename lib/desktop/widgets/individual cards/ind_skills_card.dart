import 'package:flutter/material.dart';

class IndSkillsCard extends StatelessWidget {
  const IndSkillsCard({
    super.key,
    required this.image,
    required this.skill,
    this.skillName,
    required this.scale,
  });

  final String image;
  final String skill;
  final String? skillName;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),  //This padding is for the outside of the card
      child: FittedBox(
        child: SizedBox(
          height: 110,
          child: Card(
            surfaceTintColor: Colors.black,
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(30.0),  //This is for the padding inside the card around the elements
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Image.asset(image, scale: scale),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        skill,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if (skillName != null)
                      Text(skillName!, style: TextStyle(fontSize: 10.0)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
