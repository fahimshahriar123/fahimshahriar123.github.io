import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CardTitle(text: 'Skills'),
        SizedBox(height: 30),
        Row(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/logos/logo_unrealEngine_resized.png',
                      scale: 0.5,
                    ),
                    Text('Unreal Engine 5', style: TextStyle(fontSize: 25),),
                  ],
                ),
              ),
            ),
            
          ],
        ),
        
      ],
    );
  }
}
