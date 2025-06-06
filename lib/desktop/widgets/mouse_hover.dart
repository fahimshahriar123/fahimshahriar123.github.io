import 'package:flutter/material.dart';

class MouseHover extends StatefulWidget {
  const MouseHover({super.key, required this.child});
  final Widget child;

  @override
  State<MouseHover> createState() => _MouseHoverState();
}

class _MouseHoverState extends State<MouseHover> {
    double elevation = 5;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(onEnter: (event) {
          elevation = 30.0;
          setState(() {});
        },
        onExit: (event) {
          elevation = 5;
          setState(() {});
        },
        child: Card(
          elevation: elevation,
          child: widget.child,
        ),
    );
  }
}