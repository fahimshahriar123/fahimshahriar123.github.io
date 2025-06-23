import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Fahim ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: 'Shahriar'),
            ],
          ),
        ),
      ],
    );
  }
}
