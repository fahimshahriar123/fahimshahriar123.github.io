//Steps to reproduce this page:
//1. Column with "Experience" and the actual experiences, each of which sits in a row.
//2. Wrapped the row with a column.
//3. Wrapped the column with a row. Elements: Column of step 2 + Image.
//These steps number are commented out on the specific lines of this file

import 'package:flutter/material.dart';

class CardIcon extends StatelessWidget {
  const CardIcon({
    super.key,
    required this.height,
    required this.width,
    required this.blurRadius,
    required this.offsetX,
    required this.offsety,
    this.image,
    this.imageScale,
    this.coverImage,
    this.coverImageRadius,
  });

  final double height;
  final double width;
  final double blurRadius;
  final double offsetX;
  final double offsety;
  final String? image;
  final double? imageScale;
  final String? coverImage;
  final double? coverImageRadius;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: blurRadius,
                offset: Offset(offsetX, offsety),
              ),
            ],
          ),
        ),
        if (image != null)
          Image.asset(image!, scale: imageScale)
        else if (coverImage != null)
          CircleAvatar(
            backgroundImage: AssetImage(coverImage!),
            radius: coverImageRadius,
          ),
      ],
    );
  }
}
