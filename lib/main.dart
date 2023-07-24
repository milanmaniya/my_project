import 'package:flutter/material.dart';
import 'package:my_project/dialog_box/dialog_box_demo.dart';

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
      theme: ThemeData(useMaterial3: true),
      home: const DialogBoxDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
