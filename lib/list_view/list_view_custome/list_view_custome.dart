import 'package:flutter/material.dart';

class ListViewCustomeDemo extends StatelessWidget {
  ListViewCustomeDemo({super.key});

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
            child: ListView.custom(
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Text(myFriends[index]),
                childCount: myFriends.length,
              ), 
            ),
          ),
        ],
      ),
    );
  }
}
