import 'package:flutter/material.dart';
import 'package:my_project/container_practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContainerExampleDemo(),
    );
  }
}
