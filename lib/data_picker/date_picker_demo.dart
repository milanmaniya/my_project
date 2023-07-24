import 'dart:developer';

import 'package:flutter/material.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              onPressed: () async {
                selectedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2023),
                  lastDate: DateTime(2024),
                );
                log('$selectedDate');
                setState(() {});
              },
              child: const Text('Show Date Picker'),
            ),
            const SizedBox(
              height: 30,
            ),
            selectedDate != null
                ? Text(selectedDate.toString())
                : const Text('There is not selected Date')
          ],
        ),
      ),
    );
  }
}
