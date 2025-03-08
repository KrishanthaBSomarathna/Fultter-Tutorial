import 'package:flutter/material.dart';
import 'package:tutorial/pages/natural_wonders/natural_wonders.dart';
import 'package:tutorial/pages/nightlife_page/nightlife_page.dart';
import 'package:tutorial/utils/colors.dart';
import 'package:tutorial/widgets/home_page/category_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Awesome",
                      style: TextStyle(color: mainTextColor, fontSize: 16),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Places",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(color: mainTextColor, fontSize: 16),
                ),
                SizedBox(height: 10),
                Image.asset("image.png"),
                SizedBox(height: 10),
                Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    color: mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NaturalWonders(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardWidth: 175,
                        cardColor: firstCategoryColor,
                        title: "Natural Wonders",
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NightlifePage(),
                          ),
                        );
                      },
                      child: CategoryCard(
                        cardWidth: 175,
                        cardColor: firstCategoryColor,
                        title: "Nightlife",
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      cardWidth: 175,
                      cardColor: secondCategoryColor,
                      title: "Landmarks",
                    ),
                    CategoryCard(
                      cardWidth: 175,
                      cardColor: secondCategoryColor,
                      title: "Cultural",
                    ),
                  ],
                ),
                SizedBox(height: 10),
                CategoryCard(
                  cardWidth: double.infinity,
                  cardColor: thirdCategoryColor,
                  title: "Book For A Ride Today!",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
