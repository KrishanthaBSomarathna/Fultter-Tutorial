import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.bgcolor,
    required this.miniboxcolor,
    required this.titleFontColor,
    required this.descriptionFontColor,
  });

  final String title;
  final String description;
  final Color bgcolor;
  final Color miniboxcolor;
  final Color titleFontColor;
  final Color descriptionFontColor;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(color: titleFontColor, fontSize: 16),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(color: descriptionFontColor, fontSize: 12),
            ),
            SizedBox(height: 10),
            Container(
              height: 76,
              width: 173,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: miniboxcolor,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
