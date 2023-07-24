import 'package:flutter/material.dart';

class TimerPickerDemo extends StatefulWidget {
  const TimerPickerDemo({super.key});

  @override
  State<TimerPickerDemo> createState() => _TimerPickerDemoState();
}

class _TimerPickerDemoState extends State<TimerPickerDemo> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () async {
                selectedTime = await showTimePicker(
                  builder: (context, child) {
                    return MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          alwaysUse24HourFormat: true,
                        ),
                        child: child!);
                  },
                  context: context,
                  initialEntryMode: TimePickerEntryMode.dial,
                  initialTime: TimeOfDay.now(),
                );
                setState(() {});
              },
              child: const Text('Show Time Picker'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(selectedTime != null
                ? selectedTime.toString()
                : 'Time is not selected'),
          ],
        ),
      ),
    );
  }
}
