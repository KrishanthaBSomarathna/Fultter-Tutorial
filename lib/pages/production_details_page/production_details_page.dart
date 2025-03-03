import 'package:flutter/material.dart';
import 'package:tutorial/pages/production_details_page/widgets/title_decs_card.dart';
import 'package:tutorial/widgets/reusable/production_details_page/price_card.dart';
import 'package:tutorial/widgets/shared/gradient_button.dart';
import 'package:tutorial/widgets/shared/notification_card.dart';

class ProductionDetailsPage extends StatelessWidget {
  const ProductionDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          title: Text("Product Details"),
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(30, 255, 247, 0),
                    ),
                    child: Center(child: Icon(Icons.shopping_cart, size: 200)),
                  ),
                ),
                SizedBox(height: 10),
                TitleDecsCard(
                  title: "Product Information",
                  description:
                      "vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.",
                ),

                SizedBox(height: 10),
                Text(
                  "Price List",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                PriceCard(number: 1, title: "Green peas", qty: "100"),
                PriceCard(number: 2, title: "Brussels sprouts", qty: "100"),
                PriceCard(number: 3, title: "Broccoli", qty: "100"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Total", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    SizedBox(width: 30),
                    Text(
                      "Rs. 3000",
                      style: TextStyle(color: Color(0xff9E00FF), fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GradientButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
