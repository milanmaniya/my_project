import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  @override
  Widget build(BuildContext context) {
    double height = 200;
    double width = 200;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              height: height,
              width: width,
              color: Colors.blueGrey,
              duration: const Duration(seconds: 2),
            ),
            ElevatedButton(
              child: const Text(
                "Animate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  width = 150;
                  height = 150;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
