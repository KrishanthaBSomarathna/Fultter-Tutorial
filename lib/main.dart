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
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Required for DevicePreview to work
      locale: DevicePreview.locale(context), // Adjust locale dynamically
      builder: DevicePreview.appBuilder, // Wrap your app with DevicePreview
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFFE500),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 175,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xff06FFA5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 175,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 175,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff06FFA5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          width: 175,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Color(0xffFFE500),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffCC00FF),
                  borderRadius: BorderRadius.circular(10), 
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(10), 
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 175,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Color(0xffFFE500),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 175,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff7752FE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: 175,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Color(0xffFF9900),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            width: 175,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff7752FE),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xffCC00FF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xffFFE500),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xff06FFA5),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  Container(
                    width: 75,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0xffCC00FF),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}