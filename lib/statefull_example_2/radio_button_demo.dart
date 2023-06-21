import 'package:flutter/material.dart';

class RadioButtomDemo extends StatefulWidget {
  const RadioButtomDemo({super.key});

  @override
  State<RadioButtomDemo> createState() => _RadioButtomDemoState();
}

class _RadioButtomDemoState extends State<RadioButtomDemo> {
  String gender = 'Gender', male = 'Male', female = 'Female';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('Gender'),
            Radio(
              value: male,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
            ),
            Text('Male'),
            Radio(
              value: female,
              groupValue: gender,
              onChanged: (value) {
                gender = value!;
                setState(() {});
              },
            ),
            Text('Female'),
          ],
        ),
      ),
    );
  }
}
