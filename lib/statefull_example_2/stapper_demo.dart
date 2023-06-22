import 'package:flutter/material.dart';

class StapperDemo extends StatefulWidget {
  const StapperDemo({super.key});

  @override
  State<StapperDemo> createState() => _StapperDemoState();
}

class _StapperDemoState extends State<StapperDemo> {
  int stepIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stepper(
        currentStep: stepIndex,
        onStepContinue: stepIndex != 2
            ? () {
                stepIndex++;
                setState(() {});
              }
            : null,
        onStepCancel: stepIndex != 0
            ? () {
                stepIndex--;
                setState(() {});
              }
            : null,
        steps: const [
          Step(title: Text('Step:1 '), content: Text("Hyy i am step 1")),
          Step(title: Text('Step:2 '), content: Text("Hyy i am step 2")),
          Step(title: Text('Step:3 '), content: Text("Hyy i am step 3")),
        ],
      ),
    );
  }
}
