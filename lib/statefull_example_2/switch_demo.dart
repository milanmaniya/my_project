import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  const SwitchDemo({super.key});

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool isActive = false, isActive2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Switch(
            value: isActive,
            onChanged: (value) {
              isActive = value;
              setState(() {});
            },
          ),
          CupertinoSwitch(
            value: isActive2,
            onChanged: (value) {
              isActive2 = value;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
