import 'package:flutter/material.dart';
import 'package:ghazi_bedoui/components/app_bar.dart';
import '../components/data.dart';

class TechStack extends StatelessWidget {
  const TechStack({super.key});


  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: const CustomAppBar(
        text: 'About',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: isDarkMode ? Colors.black : Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "Ma passion pour l'apprentissage m'a amené à apprendre les derniers outils et langages du secteur informatique. Les compétences que j'ai acquises font de moi un choix idéal pour créer des applications Web et mobiles robustes et dynamiques.",
                    style: TextStyle(fontSize: 18, color: Colors.blueGrey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Outils',
                    style: TextStyle(fontSize: 24, color: Colors.blueGrey),
                  ),
                  const SizedBox(height: 15),
                  Center(
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: skills.map((skill) {
                        return Card(
                          color:const Color.fromARGB(255, 18, 0, 44),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
                            child: Column(
                              children: [
                                Text(skill['name'], style: const TextStyle(color: Colors.blueGrey),),
                                Image.asset(
                                  skill['image'],
                                  width: 80,
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
          
                ]),
          ),
        ),
      ),
    );
  }
}
