import 'package:flutter/material.dart';

class CircleLine extends StatelessWidget {
  const CircleLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 5),
        Container(
          width: 15.0,
          height: 15.0,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
        ),
        
        SizedBox(height: 5),
        Container(
          width: 2.0,
          height: 100.0,
          decoration: BoxDecoration(color: Colors.blue[100]),
        ),
      ],
    );
  }
}
