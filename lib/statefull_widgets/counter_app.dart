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
              onPressed: (MyCounter.number == 0
                  ? null
                  : () {
                      MyCounter.decrement();
                      setState(() {});
                    }),
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
              onPressed: (MyCounter.number == 50
                  ? null
                  : () {
                      MyCounter.increment();
                      setState(() {});
                    }),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (MyDoubleCounter.doubleCount == 0
                  ? null
                  : () {
                      MyDoubleCounter.doubleDecrement();
                      setState(() {});
                    }),
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
              onPressed: (MyDoubleCounter.doubleCount == 50
                  ? null
                  : () {
                      MyDoubleCounter.doubleIncrement();
                      setState(() {});
                    }),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ],
    ));
  }
}
