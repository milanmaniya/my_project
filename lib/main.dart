import 'package:flutter/material.dart';
import 'package:my_project/grid_view/grid_view_extended/grid_view_extended_demo.dart';
import 'package:my_project/statefull_widgets/counter_app.dart';

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
      home: CounterApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
