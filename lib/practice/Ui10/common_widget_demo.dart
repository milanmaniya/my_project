import 'package:flutter/material.dart';

class CommonWidgetDemo extends StatelessWidget {
  final String name;
  final Color? color;
  final Icon? iconn;

  const CommonWidgetDemo(
      {super.key,
      required this.name,
      this.color = Colors.blue,
      required this.iconn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name),
            iconn!,
          ],
        ),
      ),
    );
  }
}
