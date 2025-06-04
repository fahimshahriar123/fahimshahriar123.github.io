import 'package:flutter/material.dart';

class IndEducationCard extends StatelessWidget {
  const IndEducationCard({
    super.key,
    required this.subject,
    required this.instituteName,
    required this.degreeTitle,
    required this.address,
    required this.passingYear,
  });

  final String subject;
  final String instituteName;
  final String degreeTitle;
  final String address;
  final String passingYear;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: FittedBox(
        child: SizedBox(
          child: Card(
            elevation: 5.0,
            surfaceTintColor: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(
                30.0,
              ), //This is for the padding inside the card around the elements
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(Icons.school_rounded),
                      ),
                      Text(
                        degreeTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(Icons.menu_book_rounded),
                      ),
                      Text(subject, style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(Icons.location_city_rounded),
                      ),
                      Text(instituteName, style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(Icons.place_rounded),
                      ),
                      Text(address, style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Icon(Icons.calendar_month_rounded),
                      ),
                      Text(passingYear, style: TextStyle(fontSize: 17.0)),
                    ],
                  ),
                ],
              ),
          
              // The following stack is for the image on each card and for the shadow.
              // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
              // Why? Cause normally, the shadow is the same size as the image.
            ),
          ),
        ),
      ),
    );
  }
}
