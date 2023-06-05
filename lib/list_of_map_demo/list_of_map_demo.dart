import 'package:flutter/material.dart';

class ListOfMapDemo extends StatelessWidget {
  final List<Map<String, dynamic>> myDetails = [
    {
      'name': "milan",
      'age': 18,
      'stream': 'sceince',
      'e-mail': 'milanmaniya@gmail.com',
    },
    {
      'name': "Rahul",
      'age': 20,
      'stream': 'bca',
      'e-mail': 'rahul@gmail.com',
    },
    {
      'name': "Harsh",
      'age': 17,
      'stream': 'commerce',
      'e-mail': 'harsh@gmail.com',
    },
    {
      'name': "Kano",
      'age': 21,
      'stream': 'arts',
      'e-mail': 'kano@gmail.com',
    },
    {
      'name': "Maniya",
      'age': 18,
      'stream': 'commerce',
      'e-mail': 'maniya@gmail.com',
    }
  ];

  ListOfMapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: List.generate(
              myDetails.length,
              (index) => ListTile(
                    title: Text(myDetails[index]['name']),
                    subtitle: Text(myDetails[index]['e-mail']),
                    trailing: Text(myDetails[index]['stream']),
                    leading: CircleAvatar(
                      child: Text(myDetails[index]['age'].toString()),
                    ),
                  ))),
    );
  }
}
