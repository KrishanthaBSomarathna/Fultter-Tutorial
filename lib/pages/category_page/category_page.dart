import 'package:flutter/material.dart';
import 'package:tutorial/pages/category_page/widgets/rating.dart';
import 'package:tutorial/pages/category_page/widgets/select_item.dart';
import 'package:tutorial/widgets/reusable/categories_page/category_card.dart';
import 'package:tutorial/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Category Page"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NotificationCard(),
                SizedBox(height: 10),
                Text(
                  "All Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                          SizedBox(height: 10),
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                          SizedBox(height: 10),
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                          SizedBox(height: 10),
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                          SizedBox(height: 10),
                          CategoryCard(
                            bgColor: Color.fromARGB(29, 0, 85, 255),
                            borderColor: Color(0xff0094FF),
                            circleColor: Color(0xff0E00AC),
                            title: "Vegetables & \nFruits",
                            totalItems: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Selected Items",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
                SelectItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
