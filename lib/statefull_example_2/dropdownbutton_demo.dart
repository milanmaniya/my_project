import 'package:flutter/material.dart';
import 'package:my_project/random_tic_tac_toe_game/random_tic_tac_toe_controller.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> myFrieds = ['milan', 'harsh', 'kano', 'raju', 'taral'];
  String? selctedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: DropdownButton(
        hint: const Text('Select Friend'),
        value: selctedValue,
        items: myFrieds
            .map(
              (e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ),
            )
            .toList(),
        onChanged: (value) {
          selctedValue = value!;
          setState(() {});
        },
      )),
    );
  }
}
