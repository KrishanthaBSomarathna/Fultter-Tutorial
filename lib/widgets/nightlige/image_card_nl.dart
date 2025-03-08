import 'package:flutter/material.dart';
import 'package:tutorial/utils/colors.dart';

class ImageCardNl extends StatelessWidget {
  const ImageCardNl({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isCornerRounded,
  });
  final String title;
  final String description;
  final String imageUrl;
  final bool isCornerRounded;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:
                isCornerRounded ? BorderRadius.all(Radius.circular(20)) : null,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: subNightlifeColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 10),
              isCornerRounded
                  ? ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(imageUrl),
                  )
                  : Image.asset(imageUrl),
              SizedBox(height: 10),

              Text(description),
            ],
          ),
        ),
      ],
    );
  }
}
