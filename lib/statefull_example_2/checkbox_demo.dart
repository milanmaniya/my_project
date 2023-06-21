import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  const CheckBoxDemo({super.key});

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool isCricket = false;
  bool isFootball = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('Hobbey: '),
            Checkbox(
              value: isCricket,
              onChanged: (value) {
                isCricket = value!;
                setState(() {});
              },
            ),
            Text('Cricket'),
            Checkbox(
              value: isFootball,
              onChanged: (value) {
                isFootball = value!;
                setState(() {});
              },
            ),
            Text('Football'),
          ],
        ),
      ),
    );
  }
}
