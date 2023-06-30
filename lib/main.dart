import 'package:flutter/material.dart';
import 'package:my_project/crud_demo/paliendrome_text_field_demo/text_field_exercise_demo.dart';

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
      home: TextFieldExercise(),
      debugShowCheckedModeBanner: false,
    );
  }
}
