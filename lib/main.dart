import 'package:flutter/material.dart';
import 'package:my_project/grid_view/grid_view_builder/grid_view_builder_demo.dart';

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
    return MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      home: GridViewBuilderDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
