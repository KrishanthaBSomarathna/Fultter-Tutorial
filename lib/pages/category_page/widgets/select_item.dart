import 'package:flutter/material.dart';
import 'package:tutorial/pages/category_page/widgets/rating.dart';
import 'package:tutorial/widgets/reusable/item_desc_card/item_desc_card.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(29,224,220,214),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(153, 224, 220, 214),width: 5),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Selected Items",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        ItemDescCard(title: "Vegetables are parts of plants that are consumed by humans...", number: "1"),
                        ItemDescCard(title: "Vegetables are parts of plants that are consumed by humans...", number: "2"),
                        ItemDescCard(title: "Vegetables are parts of plants that are consumed by humans...", number: "3"),
                        ItemDescCard(title: "Vegetables are parts of plants that are consumed by humans...", number: "4"),
                        Rating()
                    
                      ],
                    ),
                  ),
    );
  }
}