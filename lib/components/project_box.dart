import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

_launchURL(String link) async {
  final Uri url = Uri.parse(link);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

class Box extends StatelessWidget {
  const Box(
      {super.key,
      required this.name,
      required this.desc,
      required this.imagePath});

  final String name;
  final String desc;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 128, 128, 128)),

        child: Column(children: [
          Text(
            name,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Text(
            desc,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 5),
          Image.asset(
            imagePath,
          ),
        ]
    ));

    }
}
