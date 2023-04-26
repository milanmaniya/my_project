import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("App Bar Demo"),
        actions: const [
          Icon(Icons.camera),
          Icon(Icons.search),
          Icon(Icons.more_vert),
        ],
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text(
                "Chat",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                "Status",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                "Calls",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        elevation: 40,
        backgroundColor: Colors.green,
        // leadingWidth: 60,
        // titleSpacing: 70,
        // titleTextStyle:
        // const TextStyle(color: Colors.black),
        automaticallyImplyLeading: true,
        bottomOpacity: 0.5,
        // shape: ShapeBorder.lerp(Border.all(), Border.all(), 0),
        shadowColor: Colors.greenAccent,
      ),
    );
  }
}
