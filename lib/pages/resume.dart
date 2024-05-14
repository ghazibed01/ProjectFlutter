import 'package:flutter/material.dart';
import 'package:ghazi_bedoui/components/app_bar.dart';
import '../components/data.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: const CustomAppBar(text: "Detail"),
      body: SingleChildScrollView(
          child: Container(
            color: isDarkMode ? Colors.black : Colors.white, // Couleur de fond simple
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [

              const SideHeading(heading: 'FORMATION SCOLAIRE:'),
              const Text(
                'International Institution of Technology Sfax \n Ingénierie en Génie Logiciel \n 2023-Présent \n \nInstitut Supérieur d Informatique et Multimédia de Sfax, Tunisie 2022 \n Licence en big data et analyse de données \n\n Lycée 2 Mars 1934, Tozeur, Tunisie | 2019 \n Baccalauréat en informatique',
                style: TextStyle(color: Colors.blueGrey, fontSize: 16),
              ),
              const SideHeading(heading: 'COMPÉTENCES ET SAVOIR-FAIRE: '),
              Wrap(
                children: techStack.map((skill) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      child: Text(
                        skill,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const Column(
                children: [
                  SideHeading(heading: 'Certification: '),
                  Column(
                    children: [
                      Ptag(
                          text:
                              '●MTA : Data base Fundamentals. (Microsoft) | 2020'),
                      Ptag(
                          text:
                              '● MTA : Introduction using HTML et CSS. (Microsoft) | 2019')

                    ],
                  ),

                  SideHeading(heading: 'COMPETANCES LINGUISTIQUE: '),
                  Column(
                    children: [
                      Ptag(text: 'Arabe'),
                      Ptag(text: 'English'),
                      Ptag(text: 'Français'),
                    ],
                  ),
                  SideHeading(heading: 'Compétences techniques: '),
                  Column(
                    children: [
                      Ptag(text: 'MS PowerPoint'),
                      Ptag(text: 'MS Excel'),
                      Ptag(text: 'MS Word'),

                    ],
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class SideHeading extends StatelessWidget {
  const SideHeading({super.key, required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 14),
      child: Text(
        heading,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w600, color: Colors.blueGrey),
      ),
    );
  }
}

class Ptag extends StatelessWidget {
  const Ptag({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.blueGrey),
      ),
    );
  }
}
