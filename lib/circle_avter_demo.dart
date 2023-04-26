import 'package:flutter/material.dart';

class CircleAvterDemo extends StatelessWidget {
  const CircleAvterDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(
              "https://m.media-amazon.com/images/I/516LU0H963L._SX679_.jpg"),
          child: Text("milan"),
        ),
      ),
    );
  }
}
