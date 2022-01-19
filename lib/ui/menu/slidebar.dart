import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'package:portafolio_personal/ui/widgets/menu_icon.dart';

class MenuLeft extends StatefulWidget {
  const MenuLeft({Key? key}) : super(key: key);

  @override
  State<MenuLeft> createState() => _MenuLeftState();
}

class _MenuLeftState extends State<MenuLeft> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          Spacer(),
          CustomAnimatedIcon(
              url: 'https://www.instagram.com/edgarpcdev/',
              icon: Ionicons.logo_instagram,
              tooltip: 'Instagram'),
          SizedBox(height: 30.0),
          CustomAnimatedIcon(
              url: 'https://github.com/edgarp9504',
              icon: Ionicons.logo_github,
              tooltip: 'github'),
          SizedBox(height: 30.0),
          CustomAnimatedIcon(
              url: 'https://www.linkedin.com/in/edgarpc/',
              icon: Ionicons.logo_linkedin,
              tooltip: 'Lonkedin'),
          SizedBox(height: 50.0),
        ],
      ),
    );
  }
}
