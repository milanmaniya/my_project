import 'package:flutter/material.dart';
import 'package:my_project/list_view/list_view_custome/list_view_custome.dart';
import 'package:my_project/list_view/list_view_seperated/list_view_seperated_demo.dart';

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
    return  MaterialApp(
      // theme: ThemeData(brightness: Brightness.dark),
      home: ListViewCustomeDemo(), 
      debugShowCheckedModeBanner: false,
    );
  }
}
