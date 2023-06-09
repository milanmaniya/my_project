import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  ListViewBuilderDemo({super.key});

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
            child: ListView.builder(
              itemCount: myFriends.length,
              // itemExtent: 50,
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(myFriends[index].toString()),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
