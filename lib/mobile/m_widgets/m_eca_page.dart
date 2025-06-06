import 'package:flutter/material.dart';

class MEcaPage extends StatelessWidget {
  const MEcaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  'Extracurricular Activities',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                'assets/images/certificates/extracurricular-activities/ecacf_unleashYourTalent.webp',
                scale: 1.5,
              ),
              Image.asset(
                'assets/images/certificates/extracurricular-activities/ecacf_presentationMasterclass.webp',
                scale: 1.5,
              ),
              Image.asset(
                'assets/images/certificates/extracurricular-activities/ecacf_smartBangladeshQuiz.webp',
                scale: 1.5,
              ),
              Image.asset(
                'assets/images/certificates/extracurricular-activities/ecacf_mujibOlympiad.webp',
                scale: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
