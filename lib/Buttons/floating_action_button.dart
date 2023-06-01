import 'package:flutter/material.dart';

class FloatingAActionButtonDemo extends StatelessWidget {
  const FloatingAActionButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const FlutterLogo(),
      ),
    );
  }
}
