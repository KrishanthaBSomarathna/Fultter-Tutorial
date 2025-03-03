import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                NotificationCard(),
                Container(
                  height: 300, 
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(30, 255, 247, 0)
                  ),
                  child: Icon(Icons.shopping_cart,size: 200,),
                )
              ],
            ),
          )),
      ),
    );
  }
}
