import 'package:cv_website/desktop/widgets/individual%20cards/ind_skills_card.dart';
import 'package:flutter/material.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Skills',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  // The following stack is for the image on each card and for the shadow.
                  // Here, I added two elements. 1. A BoxDecoration for the shadow (which needs to be smaller), 2. The image.
                  // Why? Cause normally, the shadow is the same size as the image.
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 80.0,
                              offset: Offset(100, 150),
                              color: Colors.black54,
                              spreadRadius: 20.0,
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/images/icons/icon_skills.webp', scale: 4.0),
                    ],
                  ),
                  Expanded(
                    child: Wrap(
                      children: [
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_unrealEngine.webp',
                          skill: 'Unreal Engine 5',
                          skillName: 'Game Development',
                          scale: 15.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_flutter.webp',
                          skill: 'Flutter',
                          skillName: 'App Development',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_blender.webp',
                          skill: 'Blender',
                          skillName: '3D Modelling',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_canva.webp',
                          skill: 'Canva',
                          skillName: 'Graphics Designing',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_kdenlive.webp',
                          skill: 'Kdenlive',
                          skillName: 'Video Editing',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_photoshop.webp',
                          skill: 'Adobe Photoshop',
                          skillName: 'Photo Editing and Graphics Designing',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_ubuntu.webp',
                          skill: 'GNU/Linux: Ubuntu',
                          skillName: 'Linux Administration',
                          scale: 5.0,
                        ),
                        IndSkillsCard(
                          image: 'assets/images/logos/logo_digitalMarkteing.webp',
                          skill: 'Digital Marketing',
                          scale: 5.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
