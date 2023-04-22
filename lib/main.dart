import 'package:flutter/material.dart';
import 'package:my_project/column_demo.dart';
import 'package:my_project/icon_demo.dart';
import 'package:my_project/row_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: IconDemo(),
    );
  }
}
