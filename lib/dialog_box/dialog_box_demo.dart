import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Are you sure leave this application'),
                    content: const Text('Leave Application'),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancle'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
                setState(() {});
              },
              child: const Text('Alert Dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text('Leave Application'),
                    content: const Text('Are you sure leave this application'),
                    actions: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancle'),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                );
                setState(() {});
              },
              child: const Text('Cupertino Dialog Box'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                    children: [
                      Row(
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancle'),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Ok'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
                setState(() {});
              },
              child: const Text('Simple Dialog'),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
