import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.deepPurple.shade400,
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
