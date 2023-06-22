import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // scrollDirection: Axis.vertical,
        children: [
          Text('milan'),
          Text('harsh'),
          Text('kano'),
        ],
      ),
    );
  }
}