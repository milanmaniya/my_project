import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  // final TextEditingController _txtFirstNameController = TextEditingController();
  // final TextEditingController _txtMiddleNameController =
  //     TextEditingController();
  // final TextEditingController _txtLastNameController = TextEditingController();

  final List<TextEditingController> controllerList = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController()
  ];

  List<String> hintText = ['First Name', 'Middle Name', 'Last Name'];

  List<String>? myName;

  @override
  void dispose() {
    //   _txtFirstNameController.dispose();
    //   _txtMiddleNameController.dispose();
    //   _txtLastNameController.dispose();
    //   super.dispose();

    for (var element in controllerList) {
      element.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controllerList.add(TextEditingController());
          setState(() {});
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              controllerList.length,
              (index) => TextField(
                controller: controllerList[index],
                decoration: InputDecoration(
                  // labelText: hintText[index],
                  // hintText: hintText[index],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            // TextField(
            //   controller: _txtFirstNameController,
            // ),
            // TextField(
            //   controller: _txtMiddleNameController,
            // ),
            // TextField(
            //   controller: _txtLastNameController,
            // ),
            MaterialButton(
              onPressed: () {
                myName = List.generate(
                  controllerList.length,
                  (index) => controllerList[index].text,
                );
                setState(() {});
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                    color: Colors.black54,
                    fontFamily: 'Dancing Script',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            if (myName != null)
              Text(
                myName.toString(),
                style: const TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Dancing Script',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
