import 'package:cv_website/desktop/pages/eca_page.dart';
import 'package:cv_website/desktop/widgets/individual%20cards/ind_eca_card.dart';
import 'package:cv_website/desktop/widgets/mouse_hover.dart';
import 'package:flutter/material.dart';

class EcaCard extends StatefulWidget {
  const EcaCard({super.key});

  @override
  State<EcaCard> createState() => _EcaCardState();
}

class _EcaCardState extends State<EcaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        30.0,
        0.0,
        30.0,
        30.0,
      ), //This padding is for the outside of the card
      child: MouseHover(
        child: Padding(
          padding: const EdgeInsets.all(
            30.0,
          ), //This is for the padding inside the card around the elements
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Extracurricular Activities',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              IndEcaCard(
                image: [
                  'assets/images/certificates/extracurricular-activities/ecacf_unleashYourTalent.webp',
                  'assets/images/certificates/extracurricular-activities/ecacf_presentationMasterclass.webp',
                ],
                scale: 1.5,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return EcaPage();
                      },
                    ),
                  );
                },
                child: Text('Explore All'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
