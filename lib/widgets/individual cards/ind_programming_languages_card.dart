import 'package:flutter/material.dart';

class IndProgrammingLanguagesCard extends StatelessWidget {
  const IndProgrammingLanguagesCard({
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
      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),  //This padding is for the outside of the card
      child: FittedBox(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
