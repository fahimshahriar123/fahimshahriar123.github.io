import 'package:flutter/material.dart';

class HomescreenCardReverse extends StatelessWidget {
  const HomescreenCardReverse({
    super.key,
    required this.title,
    required this.description,
    required this.nextPage,
    //required this.button,
    required this.buttonText,
  });

  final String title;
  final String description;
  final Widget nextPage;
  //final ElevatedButton button;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Column(
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(description),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => nextPage),
                    );
                  },
                  child: Text(buttonText),
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Image.asset('assets/images/Fahim.webp', scale: 5.0),
        ],
      ),
    );
  }
}
