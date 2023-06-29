import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {
  List<String> result = [];
  List<Map<String, dynamic>> hobbeys = [
    {
      'name': 'cricket',
      'value': false,
    },
    {
      'name': 'football',
      'value': false,
    },
    {
      'name': 'dancing',
      'value': false,
    },
    {
      'name': 'reading',
      'value': false,
    },
    {
      'name': 'watching',
      'value': false,
    },
    {
      'name': 'writing',
      'value': false,
    }
  ];
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ...List.generate(
            hobbeys.length,
            (index) => CheckboxListTile(
              value: hobbeys[index]['value'],
              onChanged: (value) {
                hobbeys[index]['value'] = value!;
                if (hobbeys[index]['value'] == true) {
                  result.add(hobbeys[index]['name']);
                } else {
                  result.remove(hobbeys[index]['name']);
                }
                setState(() {});
              },
              secondary: Text(
                hobbeys[index]['name'],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: (result.isNotEmpty)
                ? () {
                    isSelected = true;
                    setState(() {});
                  }
                : null,
            child: const Text(
              'Submit',
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          (isSelected)
              ? SizedBox(
                  height: 300,
                  width: 400,
                  child: Text(
                    result.toString(),
                  ),
                )
              : const Text('Not select to any data'),
        ],
      ),
    );
  }
}
