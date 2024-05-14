
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key, required this.onTabChange});
  final void Function(int)? onTabChange;
  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return GNav(
        tabMargin: const EdgeInsets.symmetric(vertical: 10),
        backgroundColor: Colors.black87,
        color: Colors.grey,
        activeColor: Colors.blue,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        iconSize: 30,
        tabBorderRadius: 16,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        tabBackgroundColor: Colors.white,
        onTabChange: (value) => widget.onTabChange!(value),
        tabs: const [
          GButton(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            icon: Icons.code,
            text: 'About',
          ),
          GButton(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            icon: Icons.description,
            text: 'Details',
          ),
          GButton(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            icon: Icons.folder,
            text: 'Projets',
          ),
          GButton(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
            icon: Icons.phone,
            text: 'Contact',
          ),
        ]);
  }
}
