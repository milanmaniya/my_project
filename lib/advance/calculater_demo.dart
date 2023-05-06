import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CalculaterDemo extends StatefulWidget {
  const CalculaterDemo({super.key});

  @override
  State<CalculaterDemo> createState() => _CalculaterDemoState();
}

class _CalculaterDemoState extends State<CalculaterDemo> {
  @override
  Widget build(BuildContext context) {
    var no1Controller = TextEditingController();
    var no2Controller = TextEditingController();

    var result = "";

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: no1Controller,
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: no2Controller,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 + no2;

                    result = "$no1 and $no2 sum is $sum";

                    if (kDebugMode) {
                      print("$sum ");
                    }

                    setState(() {});
                  },
                  child: const Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 - no2;

                    result = "$no1 and $no2 sum is $sum";

                    if (kDebugMode) {
                      print("$sum ");
                    }

                    setState(() {});
                  },
                  child: const Text(
                    "Sub",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 * no2;

                    result = "$no1 and $no2 sum is $sum";

                    if (kDebugMode) {
                      print("$sum ");
                    }

                    setState(() {});
                  },
                  child: const Text(
                    "Mul",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    var no1 = int.parse(no1Controller.text.toString());
                    var no2 = int.parse(no2Controller.text.toString());

                    var sum = no1 / no2;

                    result = "$no1 and $no2 sum is $sum";

                    if (kDebugMode) {
                      print("$sum ");
                    }

                    setState(() {});
                  },
                  child: const Text(
                    "Div",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              result,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
