import 'package:flutter/material.dart';
import 'package:my_project/practice/home_interial_home/screens/home_screen/home_screen.dart';

import 'practice/home_interial_home/screens/bed_room/bedroom_screen.dart';

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
      debugShowCheckedModeBanner: false,
      home: BedRoomPage(),
    );
  }
}
