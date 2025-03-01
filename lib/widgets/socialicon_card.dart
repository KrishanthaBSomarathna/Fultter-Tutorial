import 'package:flutter/material.dart';

class SocialiconCard extends StatelessWidget {
  const SocialiconCard({super.key,
  required this.iconName,
  required this.iconColor,});

  final IconData iconName;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Center(
        child: Icon(iconName, color: iconColor),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Color(0xff06FFA5),width: 3,)
      ),
    );
  }
}