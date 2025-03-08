import 'package:flutter/material.dart';
import 'package:tutorial/utils/colors.dart';
import 'package:tutorial/widgets/reusable/natural_wonder/image_card.dart';

class NaturalWonders extends StatelessWidget {
  const NaturalWonders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Natural Wonders",
          style: TextStyle(
            color: mainNaturalWonderColor,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
            ),
            SizedBox(
              height: 10,
            ),
            ImageCard(title: "Nature Wonders Place-1", description: "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.", imageUrl: "image.png")
          ],
        ),
      ),
    );
  }
}
