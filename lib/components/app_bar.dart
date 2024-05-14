import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black))),
        ),
      ),
      title: Text(
        text,
        style: const TextStyle(
        color: Colors.white, fontSize: 28, fontWeight: FontWeight.w500),
      ),
      backgroundColor: const Color.fromARGB(255, 11, 0, 28),
    );
  }
}



