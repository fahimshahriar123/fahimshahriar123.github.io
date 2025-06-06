import 'package:flutter/material.dart';

class IndEcaCard extends StatelessWidget {
  const IndEcaCard({
    super.key,
    required this.image,
    required this.scale,
  });

  final List<String> image;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: Card(
        surfaceTintColor: Colors.black,
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Column(
            children: [
              for (var i in image)
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, bottom: 8.0),
                  child: Image.asset(i, scale: scale),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
