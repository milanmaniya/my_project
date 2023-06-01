import 'package:flutter/material.dart';

class EndDrawerDemo extends StatefulWidget {
  const EndDrawerDemo({super.key});

  @override
  State<EndDrawerDemo> createState() => _EndDrawerDemoState();
}

class _EndDrawerDemoState extends State<EndDrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      endDrawer: const Drawer(),
    );
  }
}
