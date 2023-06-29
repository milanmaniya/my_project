import 'package:flutter/material.dart';

class ShortsDemo extends StatefulWidget {
  const ShortsDemo({super.key});

  @override
  State<ShortsDemo> createState() => _ShortsDemoState();
}

class _ShortsDemoState extends State<ShortsDemo> {
  @override
  Widget build(BuildContext context) {
    return const Center(
       child: Text(
                  'Shorts Screen',
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