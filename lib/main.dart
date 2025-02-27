import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, // Set to false to disable preview
      builder: (context) => MyApp(), // Replace MyApp with your main app widget
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      useInheritedMediaQuery: true, // Required for DevicePreview to work
      locale: DevicePreview.locale(context), // Adjust locale dynamically
      builder: DevicePreview.appBuilder, // Wrap your app with DevicePreview
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff9E00FF)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff06FFA5),
                          spreadRadius: 5.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff06FFA5),
                          spreadRadius: 5.0,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 175,
                color: Color(0xff06FFA5),
              ),

              SizedBox(
                height: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          height: 250,
                          color: Color(0xffFFE500),
                        ),
                        Container(
                          width: 175,
                          height: 100,
                          color: Color(0xffFFE500),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          height: 100,
                          color: Color(0xff7752FE),
                        ),
                        Container(
                          width: 175,
                          height: 100,
                          color: Color(0xff0E00AC),
                        ),
                        Container(
                          width: 175,
                          height: 100,
                          color: Color(0xff7752FE),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}