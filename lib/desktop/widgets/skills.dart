import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/individual_skills_card.dart';
import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

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
            CardTitle(text: 'Skills'),
            SizedBox(height: 30),
            Wrap(
              spacing: spacing,
              runSpacing: spacing,
              children: [
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Unreal Engine 5',
                  imagePath: 'assets/images/logos/logo_unrealEngine.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Unreal Engine 5',
                  imagePath: 'assets/images/logos/logo_unrealEngine.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Flutter',
                  imagePath: 'assets/images/logos/logo_flutter.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Blender',
                  imagePath: 'assets/images/logos/logo_blender.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Canva',
                  imagePath: 'assets/images/logos/logo_canva.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Kdenlive',
                  imagePath: 'assets/images/logos/logo_unrealEngine.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Adobe Photoshop',
                  imagePath: 'assets/images/logos/logo_kdenlive.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Ubuntu',
                  imagePath: 'assets/images/logos/logo_ubuntu.webp',
                ),
                IndividualSkillsCard(
                  width: cardWidth,
                  imageTitle: 'Digital Marketing',
                  imagePath: 'assets/images/logos/logo_digitalmarketing.webp',
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
