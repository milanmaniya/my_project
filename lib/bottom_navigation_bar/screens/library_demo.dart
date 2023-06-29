import 'package:flutter/material.dart';

class LibraryDemo extends StatefulWidget {
  const LibraryDemo({super.key});

  @override
  State<LibraryDemo> createState() => _LibraryDemoState();
}

class _LibraryDemoState extends State<LibraryDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
       child: Text(
                  'Library Screen',
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