import 'package:flutter/material.dart';
import 'package:my_project/statefull_example_2/pop_menu_button_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      home: PopMenyButtonDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
