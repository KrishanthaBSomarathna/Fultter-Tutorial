import 'package:flutter/material.dart';
import 'package:tutorial/utils/colors.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,style: TextStyle(color: subNaturalWonderTitleColor,fontSize: 19,fontWeight: FontWeight.w900),),
              SizedBox(height: 10,),
              Image.asset(imageUrl),
              SizedBox(height: 10,),

              Text(description),
            ],
          ),
        ),
      ],
    );
  }
}