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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xFF9E00FF)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: double.infinity,
              height: 175,
              color: Color(0xff06FFA5),
            ),
            Container(
              width: double.infinity,
              height: 175,
              color: Color(0xff06FFA5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width: 175, height: 300, color: Color(0xffFFE500)),
                Container(width: 175, height: 300, color: Color(0xffFFE500)),
              ],
            ),
          ],
        ),
      ),
      


    );
  }
}