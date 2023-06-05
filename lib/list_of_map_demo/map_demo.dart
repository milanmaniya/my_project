import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  final Map<String, dynamic> myDetails = {
    'name': "milan",
    'age': 18,
    'mobile': "9574003819",
    'e-mail': 'milanmaniya@gmail.com',
    'address': 'mota varachha'
  };

  MapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(myDetails['name']),
          Text(myDetails['age'].toString()),
          Text(myDetails['mobile']),
          Text(myDetails['e-mail']),
          Text(myDetails['address']),
        ],
      ),
    );
  }
}
