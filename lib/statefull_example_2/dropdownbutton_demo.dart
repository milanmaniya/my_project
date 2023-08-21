import 'package:flutter/material.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> myFrieds = ['milan', 'harsh', 'kano', 'raju', 'taral'];
  String? selctedValue;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Center(
    //       child: DropdownButton(
    //     hint: const Text('Select Friend'),
    //     value: selctedValue,
    //     items: myFrieds
    //         .map(
    //           (e) => DropdownMenuItem(
    //             value: e,
    //             child: Text(e),
    //           ),
    //         )
    //         .toList(),
    //     onChanged: (value) {
    //       selctedValue = value!;
    //       setState(() {});
    //     },
    //   ),
    // ),
    // );

    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: selectedIndex,
          items: List.generate(
            myFrieds.length,
            (index) => DropdownMenuItem(
              value: myFrieds[index],
              child: Text(myFrieds[index]),
            ),
          ),
          onChanged: (index) {
            selectedIndex = index as int;
            setState(() {});
          },
        ),
      ),
    );
  }
}
