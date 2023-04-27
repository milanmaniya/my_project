import 'package:flutter/material.dart';
import 'package:my_project/practice/common_widget_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommonWidgetDemo(
          name: 'milan', color: Colors.green, iconn: Icon(Icons.search)),
    );
  }
}
