import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/pages/ui_main_page.dart';

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
      home: UiPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
