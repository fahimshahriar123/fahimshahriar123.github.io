import 'package:cv_website/data/methods.dart';
import 'package:cv_website/desktop/pages/landing_page.dart';
import 'package:cv_website/desktop/pages/test_landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, value, child) {
        return MaterialApp(
          title: 'Fahim Shahriar Portfolio',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              brightness: value ? Brightness.light : Brightness.dark,
            ),
          ),
          home: TestLandingPage(),
          routes: {'/home': (context) => LandingPage()},
        );
      },
    );
  }
}
