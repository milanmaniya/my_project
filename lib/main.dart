import 'package:flutter/material.dart';
import 'package:my_project/crud_demo/form_field/text_form_field_task.dart';

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
      home: TextFormFieldTask(),
      debugShowCheckedModeBanner: false,
    );
  }
}
