import 'dart:math';

import 'package:flutter/material.dart';

class ButttonWidthChange extends StatefulWidget {
  const ButttonWidthChange({super.key});

  @override
  State<ButttonWidthChange> createState() => _ButttonWidthChangeState();
}

class _ButttonWidthChangeState extends State<ButttonWidthChange>
    with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20));
    super.initState();
  }

  double width = 2;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController!,
          builder: (context, child) => ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(
                    width: width,
                    color: Colors.pink.shade100,
                  ),
                ),
              ),
            ),
            onPressed: () {
              width = random.nextDouble() * 100 / 20;
              setState(() {});
            },
            child: const Text('Width Value Change'),
          ),
        ),
      ),
    );
  }
}
