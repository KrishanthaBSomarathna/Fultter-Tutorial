import 'package:flutter/material.dart';

class ItemDescCard extends StatelessWidget {
  const ItemDescCard({super.key, required this.title, required this.number});

  final String title;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Container(
          alignment: Alignment.center,
          width: 50, 
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xffFFE500),
            
          ),
          
          child: Text(number),
        ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SizedBox(
          width: 250,
          child: Text(title),
        ),
      )

      ],
    );
  }
}
