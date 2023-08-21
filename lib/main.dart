import 'package:flutter/material.dart';
import 'package:my_project/navigation_example/first_screen.dart';
import 'package:my_project/navigation_example/second_screen.dart';
import 'package:my_project/navigation_example/third_screen.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScren(),
      },
      theme: ThemeData(useMaterial3: true),
      // home: const FirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
