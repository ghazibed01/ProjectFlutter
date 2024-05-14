import 'package:flutter/material.dart';
import 'package:ghazi_bedoui/components/app_bar.dart';
import '../components/data.dart';
import '../components/project_box.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: const CustomAppBar(text: 'Projets'),
      body: SingleChildScrollView(
          child: Container(
            color: isDarkMode ? Colors.black : Colors.white, // Couleur de fond simple
            child: Column(
          children: projects
              .map((e) => Box(
                  name: e['name'],
                  desc: e['desc'],
                  imagePath: e['image']))
              .toList(),
        ),
      )),
    );
  }
}
