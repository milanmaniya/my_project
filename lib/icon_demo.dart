import 'package:flutter/material.dart';

class IconDemo extends StatelessWidget {
  const IconDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.accessibility_new_outlined,
          color: Colors.red,
          size: 50,
          shadows: [
            Shadow(
              color: Colors.purpleAccent,
              blurRadius: 20,
              offset: Offset(10, 30),
            ),
          ],
        ),
      ),
    );
  }
}
