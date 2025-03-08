import 'package:flutter/material.dart';
import 'package:tutorial/utils/colors.dart';
import 'package:tutorial/widgets/nightlige/image_card_nl.dart';
import 'package:tutorial/widgets/reusable/natural_wonder/image_card.dart';

class LandMark extends StatelessWidget {
  const LandMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Nightlife",
          style: TextStyle(
            color: mainNightlifeColor,
            fontSize: 24,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
            ),
            SizedBox(height: 10),
            ImageCardNl(
              isCornerRounded: true,
              title: "Nightlife Place-1",
              
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageUrl: "image.png",
            ),
            ImageCardNl(
              isCornerRounded: true,
              title: "Nightlife Place-1",
              
              description:
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
              imageUrl: "image.png",
            ),
          ],
        ),
      ),
    );
  }
}
