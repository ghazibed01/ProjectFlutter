import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import 'about.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const CustomAppBar(text: 'Curriculum Vitae'),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Image.asset(
              'assets/images/profile.jpg',
              width: 130,
            ),
                Text(
                  "Ghazi BEDOUI",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "lieu de naissance : Tozeur ",
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  textAlign: TextAlign.center,),
                Text(
                  "Date de naissance : Le 26/06/1999 ",
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  textAlign: TextAlign.center,),


                const Text(
              "Jeune diplômé, motivé, autonome et rigoureux titulaire d'un diplôme de technicien supérieur en big data et analyse de données. Je recherche un emploi qui me permettra de démarrer ma carrière professionnelle.",
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),


          ]),
        ),
      ),
    );
  }
}

