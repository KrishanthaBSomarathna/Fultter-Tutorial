import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

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
      useInheritedMediaQuery: true, // Required for DevicePreview to work
      locale: DevicePreview.locale(context), // Adjust locale dynamically
      builder: DevicePreview.appBuilder, // Wrap your app with DevicePreview
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff9E00FF)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                height: 330,
                width: double.infinity,
                color: Color(0xffFFE500),
                child: Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
                  
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                height: 330,
                width: double.infinity,
                color: Color(0xff85FFD3),
                child: Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),
                  textAlign: TextAlign.center,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
