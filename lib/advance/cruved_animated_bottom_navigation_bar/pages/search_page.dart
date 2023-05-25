import 'package:flutter/material.dart';

class SearchPaage extends StatelessWidget {
  const SearchPaage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.deepPurple.shade400,
      body: const Center(
        child: Text(
          "Search Page",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
