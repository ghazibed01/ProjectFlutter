import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ghazi_bedoui/components/app_bar.dart';
import '../components/link_to_social.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  final String gitHubUrl = 'https://github.com/ghazibed01';
  final String linkedinUrl =
      'https://www.linkedin.com/in/ghazi-bedoui-284328215';
  final String whatsappUrl = 'https://wa.me/+21655786272';

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: const CustomAppBar(text: 'Contact'),
      body: Container(
        color: isDarkMode ? Colors.black : Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Contact Info:',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            const Text(
              '\n Tel: +216 55786272 \n Email: ghazibedoui23@gmail.com \n Code Postal: 2260 \n Adresse : hay hassnaoui degach ',
              style: TextStyle(fontSize: 16, color: Colors.blueGrey),
            ),
            const Text(
              '\n Contact me in my Social:',
              style: TextStyle(fontSize: 22, color: Colors.blueGrey),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinkToSocial(
                  launchUrl: gitHubUrl,
                  image: 'assets/images/social-media/github-logo.png',
                ),
                LinkToSocial(
                  launchUrl: linkedinUrl,
                  image: 'assets/images/social-media/linkedin-logo.png',
                ),
                LinkToSocial(
                  launchUrl: whatsappUrl,
                  image: 'assets/images/social-media/whatsapp.png',
                ),

              ],
            ),
            Expanded(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(34.728894, 10.737919),
                  zoom: 14,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId('IIT'),
                    position: LatLng(34.728894, 10.737919),
                    infoWindow: InfoWindow(title: 'Institut International de Technologie'),
                  ),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
