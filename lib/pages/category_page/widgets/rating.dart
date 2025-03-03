import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(60, 202, 202, 202),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.star,color: Colors.amber,size: 38,),
          Icon(Icons.star,color: Colors.amber,size: 38),
          Icon(Icons.star,color: Colors.amber,size: 38),
          Icon(Icons.star,color: Colors.amber,size: 38),
          Icon(Icons.star,size: 38),
        ],
      ),
    );
  }
}