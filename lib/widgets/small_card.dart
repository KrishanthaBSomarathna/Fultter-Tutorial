import 'package:flutter/material.dart';

class SmallCard extends StatelessWidget {
  const SmallCard({super.key,
  required  this.title, 
  required this.description});

  final String title ;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 175 ,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff9E00FF)
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
          Text(description,textAlign: TextAlign.center,),

        ],
      ),
    );
  }
}