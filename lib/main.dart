import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tutorial/pages/category_page/category_page.dart';
import 'package:tutorial/pages/home_page/home_page.dart';
import 'package:tutorial/pages/production_details_page/production_details_page.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true, // Set to false to disable preview
      builder: (context) => MyApp(), // Replace MyApp with your main app widget
    ),
  );
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
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ProductionDetailsPage(),
    );
  }
}
