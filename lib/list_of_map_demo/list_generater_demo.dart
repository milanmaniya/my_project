import 'package:flutter/material.dart';

class ListGenerateDemo extends StatelessWidget {
  ListGenerateDemo({super.key});

  final List<String> myFriends = [
    'milan',
    'raju',
    'harsh',
    'maniya',
    'kano',
    'mno',
    'pqr'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            children: List.generate(
                myFriends.length, (index) => Text(myFriends[index]))));
  }
}
