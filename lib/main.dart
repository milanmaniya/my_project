import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/model_demo.dart';
import 'package:my_project/practice/Ui7/whatsapp_list_of_map.dart';

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
      home: WhatsappListOfMapDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
