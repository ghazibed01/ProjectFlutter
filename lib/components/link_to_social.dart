import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkToSocial extends StatelessWidget {
  const LinkToSocial({
    super.key,
    required this.launchUrl,
    required this.image,
  });

  final String launchUrl;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(launchUrl);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            image,
            width: 50,
          ),
        ),
      ),
    );
  }
}

_launchURL(String gitHubUrl) async {
  final Uri url = Uri.parse(gitHubUrl);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
