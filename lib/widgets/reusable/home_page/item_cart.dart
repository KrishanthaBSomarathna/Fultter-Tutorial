import 'package:flutter/material.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    super.key,
    required this.itemName,
    required this.itemPrice,
    required this.quantity,
  });

  final String itemName;
  final String itemPrice;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      width: 175,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff9E00FF),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 92,
              width: 173,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff06FFA5),
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 8),
            Text(
              itemName,
              style: TextStyle(
                fontSize: 16,
                color: const Color.fromARGB(232, 249, 249, 249),
              ),
            ),
            SizedBox(height: 3),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        quantity ,
                        style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(168, 255, 255, 255),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "Rs $itemPrice",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color(0xffFFE500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    child: Icon(Icons.add, color: Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(width: 3, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
