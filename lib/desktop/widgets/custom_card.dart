import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          width: (MediaQuery.sizeOf(context).width) / 1.2,
          child: Card(color: Colors.white, elevation: 2, child: child),
        ),
      ),
    );
  }
}
