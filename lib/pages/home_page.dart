import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Welcome to the Home Page!'),
              ElevatedButton(
                onPressed: () {
                  // Navigate to the About Page
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
                },
                child: Text('Go to About Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}