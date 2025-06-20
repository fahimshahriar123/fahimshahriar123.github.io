import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      child: Padding(
        padding: EdgeInsetsGeometry.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CardTitle(text: 'Skills'), SizedBox(height: 30),
          Card(child: Row(children: [
            Image.asset('assets/images/logos/logo_unrealEngine.webp'),
          ],),),
          ],
        ),
      ),
    );
  }
}
