import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {
  Random random = Random();
  double height = 100;
  double width = 100;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         Container(
    //           height: height,
    //           width: width,
    //           color: Colors.purple,
    //         ),
    //         const SizedBox(
    //           height: 20,
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             height = random.nextDouble() * 100;
    //             width = random.nextDouble() * 100;
    //             setState(() {});
    //           },
    //           child: const Text('Change Value'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              curve: Curves.easeIn,
              duration: const Duration(seconds: 3),
              height: height,
              width: width,
              color: Colors.purple,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                height = random.nextDouble() * 100;
                width = random.nextDouble() * 100;
                setState(() {});
              },
              child: const Text('Change Value'),
            ),
          ],
        ),
      ),
    );
  }
}
