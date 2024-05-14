import 'package:flutter/material.dart';
import '../pages/about.dart';
import '../pages/contact.dart';
import '../pages/home.dart';
import '../pages/project.dart';
import '../pages/resume.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 13, 150, 255),
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          Tile(
              tile: 'Home',
              onClick: () => {
                    Navigator.pop(context),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()))
                  }),
          Tile(
              tile: 'Tech Stack',
              onClick: () => {
                    Navigator.pop(context),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TechStack()))
                  }),
          Tile(
              tile: 'Resume',
              onClick: () => {
                    Navigator.pop(context),
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Resume()))
                  }),
          Tile(
              tile: 'Projects',
              onClick: () => {
                    Navigator.pop(context),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Project()))
                  }),
          Tile(
              tile: 'Contact',
              onClick: () => {
                    Navigator.pop(context),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Contact()))
                  }),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({super.key, required this.tile, required this.onClick});
  final String tile;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 40, vertical: 4),
      title: Text(
        tile,
        style: const TextStyle(fontSize: 28, color: Colors.white),
      ),
      trailing: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      onTap: onClick,
    );
  }
}
