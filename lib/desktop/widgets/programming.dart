import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/individual_skills_card.dart';
import 'package:flutter/material.dart';

class Programming extends StatelessWidget {
  const Programming({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double maxWidth = constraints.maxWidth;
        double spacing = 10;
        int cardsPerRow = maxWidth > 600 ? 2 : 1;
        double cardWidth =
            cardsPerRow < 2 ? maxWidth : (maxWidth - spacing) / 2;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitle(text: 'Programming Language'),
            SizedBox(height: 30),
            Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Dart',
                  imagePath: 'assets/images/logos/logo_dart.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'C++',
                  imagePath: 'assets/images/logos/logo_c++.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'C',
                  imagePath: 'assets/images/logos/logo_c.webp',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
