import 'package:cv_website/pages/test_next_page.dart';
import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  const NameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(
              //   backgroundImage: AssetImage('assets/images/Fahim.webp'),
              //   radius: 150.0,
              // ),
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
                    backgroundImage: AssetImage('assets/images/Fahim.webp'),
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
                  Text('Learner (Need to edit)'),
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
