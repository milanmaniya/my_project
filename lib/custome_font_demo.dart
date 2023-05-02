import 'package:flutter/material.dart';

class CustomeFontDemo extends StatelessWidget {
  const CustomeFontDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Chocolate With Almonde",
          style: TextStyle(
              color: Colors.black, fontFamily: "Dancing Script", fontSize: 30),
        ),
      ),
    );
  }
}
