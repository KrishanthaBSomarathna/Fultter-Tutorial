import 'package:flutter/material.dart';
import 'package:tutorial/pages/home_page/widgets/search_box.dart';
import 'package:tutorial/widgets/app_bar/app_bar.dart';
import 'package:tutorial/widgets/reusable/home_page/product_card.dart';
import 'package:tutorial/widgets/reusable/home_page/item_cart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: appBarLeadi,
          title: appBarTitle,
          actions: appBarAction,
          shadowColor: Colors.black12,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchingBar(),
                SizedBox(height: 10),
                Text(
                  "Explore Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      bgcolor: Color(0xff9E00FF),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      miniboxcolor: Color(0xFF06FFA5),
                      title: "Vegetables",
                      descriptionFontColor: Colors.white54,
                      titleFontColor: Colors.white,
                    ),
                    ProductCard(
                      bgcolor: Color(0xff9E00FF),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      miniboxcolor: Color(0xFF06FFA5),
                      title: "Vegetables",
                      descriptionFontColor: Colors.white54,
                      titleFontColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      bgcolor: Color(0xffFFE500),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      miniboxcolor: Color(0xFFFF9900),
                      title: "Vegetables",
                      descriptionFontColor: Colors.black38,
                      titleFontColor: Colors.black,
                    ),
                    ProductCard(
                      bgcolor: Color(0xffFFE500),
                      description:
                          "Vegetables are parts of plants that are consumed by humans...",
                      miniboxcolor: Color(0xFFFF9900),
                      title: "Vegetables",
                      descriptionFontColor: Colors.black38,
                      titleFontColor: Colors.black,
                    ),
                    
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "For Sale and Low Cost",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ItemCart(itemName: "Item 01",itemPrice: "200.00",quantity: "200ml",),
                    ItemCart(itemName: "Item 02",itemPrice: "200.00",quantity: "200ml",)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
