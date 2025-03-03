import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffCC00FF), Color(0xffFFE500)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(100)
        ),
        alignment: Alignment.center,
        child: Center(child: Text("Proccess to Pay",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),)),
      ),
    );
  }
}
