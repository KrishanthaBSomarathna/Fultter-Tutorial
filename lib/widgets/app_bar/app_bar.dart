import 'package:flutter/material.dart';

Widget appBarLeadi = Padding(
  padding: const EdgeInsets.all(5.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xff9E00FF),
    ),
    child: Icon(Icons.location_on, color: Colors.white),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        fontSize: 16,
        color: const Color.fromARGB(122, 152, 152, 152),
      ),
    ),
    Text(
      "382,Madatuwa,Padeniya",
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
    ),
  ],
);

List<Widget> appBarAction = [
  Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromARGB(203, 255, 153, 0),
      ),
      child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
    ),
  ),
];
