//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:cv_website/desktop/widgets/circle_line.dart';
import 'package:flutter/material.dart';

class MIndExperience extends StatelessWidget {
  const MIndExperience({
    super.key,
    required this.companyName,
    required this.designation,
    required this.timeline,
  });

  final String companyName;
  final String designation;
  final String timeline;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleLine(),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(timeline, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                companyName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(designation),
            ],
          ),
        ),
      ],
    );
  }
}
