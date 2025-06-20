import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      width: 200.0,
      child: Stack(
        children: [
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
          ),
          Positioned(
            top: 50.0,
            child: Container(
              height: 5.0,
              width: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
