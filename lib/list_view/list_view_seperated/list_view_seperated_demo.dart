import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewSeperatedDemo extends StatelessWidget {
  ListViewSeperatedDemo({super.key});

  final List<String> myFriends = [
    "milan",
    "maniya",
    "harsh",
    "sangani",
    "kano",
    "raju",
    "dhruvil",
    "aman",
    "akash",
    "rohit"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Text("hyy"),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: 70,
              // reverse: true,
              // shrinkWrap: true,
              clipBehavior: Clip.hardEdge,
              dragStartBehavior: DragStartBehavior.down,
              physics: const BouncingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            ),
          ),
         
        ],
      ),
    );
  }
}
