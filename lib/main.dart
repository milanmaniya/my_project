import 'package:flutter/material.dart';
import 'package:my_project/tab_bar_demo2/tab_bar_demo2.dart';

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
      home: TabBarDemo2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
