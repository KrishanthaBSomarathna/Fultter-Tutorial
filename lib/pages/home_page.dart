import 'package:flutter/material.dart';
import 'package:tutorial/widgets/icon_card.dart';
import 'package:tutorial/widgets/large_card.dart';
import 'package:tutorial/widgets/small_card.dart';
import 'package:tutorial/widgets/socialicon_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 500,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree.Each widget in the tree corresponds to a specific UI component, and the arrangement of these widgets defines the layout and appearance of the app.By understanding the widget tree, you can efficiently organize your UI components and create a seamless user experience.",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SmallCard(
                      
                      title: "open-source",
                      description:
                          "Flutter is an open-source UI (User Interface) software development kit created by Google.",
                    ),
                    SmallCard(
                      title: "open-source",
                      description:
                          "Flutter is an open-source UI (User Interface) software development kit created by Google.",
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                LargeCard(
                  title: "open-source",
                  description:
                      "Flutter is an open-source UI (User Interface) software development kit created by Google.Flutter is an open-source UI (User Interface) software development kit created by Google.",
                ),
                SizedBox(
                  height: 10,
                ),
                LargeCard(
                  title: "open-source",
                  description:
                      "Flutter is an open-source UI (User Interface) software development kit created by Google.Flutter is an open-source UI (User Interface) software development kit created by Google.",
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconCard(
                      color: Color(0xff06FFA5),
                      iconcolor: Colors.black,
                      iconname: Icons.emoji_people_outlined,
                    ),
                    IconCard(
                      color: Color(0xffCC00FF),
                      iconcolor: Colors.white,
                      iconname: Icons.car_crash,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SocialiconCard(
                      iconColor: Colors.black,
                      iconName: Icons.facebook,
                    ),
                    SocialiconCard(
                      iconColor: Colors.black,
                      iconName: Icons.one_x_mobiledata,
                    ),
                    SocialiconCard(
                      iconColor: Colors.black,
                      iconName: Icons.facebook,
                    ),
            
                    SocialiconCard(
                      iconColor: Colors.black,
                      iconName: Icons.facebook,
                    ),
            
                    SocialiconCard(
                      iconColor: Colors.black,
                      iconName: Icons.facebook,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
