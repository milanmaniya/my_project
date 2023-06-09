import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatelessWidget {
  const BottomNavigationBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.red,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.menu),
            Icon(Icons.search_sharp),
            Icon(Icons.more_vert),
            Icon(Icons.wallet)
          ],
        ),
      ),
    );
  }
}
