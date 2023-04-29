import 'package:flutter/material.dart';

class CommonWidgetDemo extends StatelessWidget {
  const CommonWidgetDemo({super.key});

//   final String name;
//   final Color? color;
//   final Icon? iconn;

//   const CommonWidgetDemo(
//       {super.key,
//       required this.name,
//       this.color = Colors.blue,
//       required this.iconn});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100,
        width: 100,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("sdndnd"),
          ],
        ),
      ),
    );
  }
}
