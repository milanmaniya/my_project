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
    // return Scaffold(
    //   body: Center(
    //     child: Row(
    //       children: [
    //         const Text('Hobbey: '),
    //         Checkbox(
    //           value: isCricket,
    //           onChanged: (value) {
    //             isCricket = value!;
    //             setState(() {});
    //           },
    //         ),
    //         const Text('Cricket'),
    //         Checkbox(
    //           value: isFootball,
    //           onChanged: (value) {
    //             isFootball = value!;
    //             setState(() {});
    //           },
    //         ),
    //         const Text('Football'),
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: Column(
        children: [
          const Text("Hobbey: "),
          CheckboxListTile(
            value: isCricket,
            onChanged: (value) {
              isCricket = value!;
              setState(() {});
            },
            secondary: const Text('Cricket'),
          ),
          CheckboxListTile(
            value: isFootball,
            onChanged: (value) {
              isFootball = value!;
              setState(() {});
            },
            secondary: const Text('Football'),
          ),
        ],
      ),
    );
  }
}
