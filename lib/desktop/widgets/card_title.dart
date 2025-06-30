import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          Container(
            height: 5.0,
            width: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Color.fromRGBO(0, 125, 236, 1),
            ),
          ),
        ],
      ),
    );
  }
}
