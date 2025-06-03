import 'package:flutter/material.dart';

class IndividualCertificationCard extends StatelessWidget {
  const IndividualCertificationCard({
    super.key,
    required this.image,
    required this.certification,
    required this.certificationName,
    required this.scale,
  });

  final List<String> image;
  final String certification;
  final String certificationName;
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
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  for (var i in image)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: Image.asset(i, scale: scale),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      certification,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(certificationName, style: TextStyle(fontSize: 15.0)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
