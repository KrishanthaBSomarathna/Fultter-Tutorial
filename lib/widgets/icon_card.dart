import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.color,
    required this.iconcolor,
    required this.iconname,
  });

  final Color color;
  final Color iconcolor;
  final IconData iconname;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Center(child: Icon(iconname,size: 100,color: iconcolor,)),
    );
  }
}
