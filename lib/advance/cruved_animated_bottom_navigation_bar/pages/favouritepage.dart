import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade400,
      body: const Center(
        child: Text(
          "Favourite Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
