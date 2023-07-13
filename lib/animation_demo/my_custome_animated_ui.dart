import 'package:flutter/material.dart';
import 'package:my_project/animation_demo/my_custome_animation_demo.dart';

class MyCustomeAnimatedUiDemo extends StatefulWidget {
  const MyCustomeAnimatedUiDemo({super.key});

  @override
  State<MyCustomeAnimatedUiDemo> createState() =>
      _MyCustomeAnimatedUiDemoState();
}

class _MyCustomeAnimatedUiDemoState extends State<MyCustomeAnimatedUiDemo>
    with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 20))
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClockWiseRotation(listenable: _animationController!),
            const SizedBox(
              height: 40,
            ),
            AntiCloclWiseRotation(listenable: _animationController!),
          ],
        ),
      ),
    );
  }
}
