import 'package:flutter/material.dart';
import 'package:my_project/string_extemsion_demo_validation/build_context_extension.dart';

class UiDemo extends StatefulWidget {
  const UiDemo({super.key});

  @override
  State<UiDemo> createState() => _UiDemoState();
}

class _UiDemoState extends State<UiDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: context.screenHeight * 0.4,
          width: context.screenWidth * 0.3,
          color: Colors.red,
        ), 
      ),
    );
  }
}
