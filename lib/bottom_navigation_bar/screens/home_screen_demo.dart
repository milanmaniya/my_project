import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
       child: Text(
                  'Home Screen',
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'Dancing Script',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
    );
  }
}