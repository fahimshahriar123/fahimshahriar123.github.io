//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:flutter/material.dart';

class CircleLine extends StatelessWidget {
  const CircleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 5.0,
          height: 100.0,
          decoration: BoxDecoration(color: Colors.amber),
        ),
      ],
    );
  }
}
