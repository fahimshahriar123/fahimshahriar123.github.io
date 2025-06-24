import 'package:cv_website/desktop/widgets/card_title.dart';
import 'package:cv_website/desktop/widgets/individual_skills_card.dart';
import 'package:flutter/material.dart';

class Programming extends StatelessWidget {
  const Programming({super.key});

  static const Map<String, String> imageMap = {
    'Unreal Engine 5': 'assets/images/logos/logo_unrealEngine.webp',
    'Flutter': 'assets/images/logos/logo_flutter.webp',
    'Blender': 'assets/images/logos/logo_blender.webp',
    'Canva': 'assets/images/logos/logo_canva.webp',
    'Kdenlive': 'assets/images/logos/logo_kdenlive.webp',
    'Adobe Photoshop': 'assets/images/logos/logo_photoshop.webp',
    'Ubuntu': 'assets/images/logos/logo_ubuntu.webp',
    'Digital Marketing': 'assets/images/logos/logo_digitalmarketing.webp',
  };

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
              children:
                  imageMap.entries.map((entry) {
                    return IndividualSkillsCard(
                      width: cardWidth,
                      imageTitle: entry.key,
                      imagePath: entry.value,
                    );
                  }).toList(),
            ),
          ],
        );
      },
    );
  }
}