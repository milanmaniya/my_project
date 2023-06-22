import 'package:flutter/material.dart';

class PopMenyButtonDemo extends StatefulWidget {
  const PopMenyButtonDemo({super.key});

  @override
  State<PopMenyButtonDemo> createState() => _PopMenyButtonDemoState();
}

class _PopMenyButtonDemoState extends State<PopMenyButtonDemo> {
  List<String> myFrieds = ['milan', 'harsh', 'kano', 'raju', 'taral'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PopupMenuButton(
          itemBuilder: (context) => myFrieds
              .map(
                (e) => PopupMenuItem(
                  child: Text(e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
