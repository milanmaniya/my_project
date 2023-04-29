import 'package:flutter/material.dart';

class DivPadAlignDemo extends StatelessWidget {
  const DivPadAlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     color: Colors.red,
      //   ),
      // ),

      // body: Align(
      //   alignment: Alignment.center,

      //   child: Container(
      //     height: 100,
      //     width: 100,
      //     color: Colors.red,
      //   ),
      // ),

      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: const [
      //       Text("milan"),
      //       Divider(
      //         color: Colors.red,
      //         thickness: 3,
      //         height: 20,
      //         indent: 20,
      //         endIndent: 20,
      //       ),
      //       Text("maniya"),
      //     ],
      //   ),
      // ),

      body: Center(
        child: IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text("milan"),
              VerticalDivider(
                color: Colors.red,
                thickness: 3,
                width: 20,
                indent: 1,
                endIndent: 1,
              ),
              Text("maniya"),
            ],
          ),
        ),
      ),
    );
  }
}
