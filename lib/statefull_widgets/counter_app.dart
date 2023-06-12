import 'package:flutter/material.dart';
import 'package:my_project/statefull_widgets/counter.controller.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                MyCounter.decrement();
              },
              icon: const Icon(Icons.remove),
            ),
            Text(
              MyCounter.number.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                MyCounter.increment();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                MyDoubleCounter.doubleDecrement();
              },
              icon: const Icon(Icons.remove),
            ),
            Text(
              MyDoubleCounter.doubleCount.toString(),
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {
                MyDoubleCounter.doubleIncrement();
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    ));
  }
}
