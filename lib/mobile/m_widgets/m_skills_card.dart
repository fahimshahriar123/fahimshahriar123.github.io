import 'package:cv_website/desktop/widgets/card_icon.dart';
import 'package:cv_website/mobile/m_widgets/individual%20cards/m_ind_skills_card.dart';
import 'package:flutter/material.dart';

class MSkillsCard extends StatelessWidget {
  const MSkillsCard({super.key});

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
            5.0,
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
              CardIcon(
                height: 50,
                width: 50,
                blurRadius: 80,
                offsetX: 100,
                offsety: 150,
                image: 'assets/images/icons/icon_skills.webp',
                imageScale: 4.0,
              ),
              SizedBox(height: 30.0),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_unrealEngine.webp',
                skill: 'Unreal Engine 5',
                skillName: 'Game Development',
                scale: 15.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_flutter.webp',
                skill: 'Flutter',
                skillName: 'App Development',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_blender.webp',
                skill: 'Blender',
                skillName: '3D Modelling',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_canva.webp',
                skill: 'Canva',
                skillName: 'Graphics Designing',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_kdenlive.webp',
                skill: 'Kdenlive',
                skillName: 'Video Editing',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_photoshop.webp',
                skill: 'Adobe Photoshop',
                skillName: 'Photo Editing and Graphics Designing',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_ubuntu.webp',
                skill: 'GNU/Linux: Ubuntu',
                skillName: 'Linux Administration',
                scale: 5.0,
              ),
              MIndSkillsCard(
                image: 'assets/images/logos/logo_digitalMarkteing.webp',
                skill: 'Digital Marketing',
                scale: 5.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
