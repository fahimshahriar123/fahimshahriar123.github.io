import 'package:cv_website/pages/test_next_page.dart';
import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

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
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // The following stack is for the image on each card and for the shadow.
              // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
              // Why? Cause normally, the shadow is the same size as the image.
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 80.0,
                          offset: Offset(100, 100),
                          color: Colors.black87,
                          //spreadRadius: 20.0,
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/profile_picture.webp'),
                    radius: 150.0,
                  ),
                ],
              ),

              SizedBox(width: 250.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fahim Shahriar',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(fontSize: 25.0, color: Colors.grey),
                  ),
                  Text('(Address)'),
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return TestNextPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'Download CV',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
