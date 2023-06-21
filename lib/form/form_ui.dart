import 'package:flutter/material.dart';
import 'package:my_project/form/common_widgets.dart';

class FormUi extends StatefulWidget {
  const FormUi({super.key});

  @override
  State<FormUi> createState() => _FormUiState();
}

List<String> hobbeyName = [];
bool isActive = false, isPress = false;
String name = '';

class _FormUiState extends State<FormUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Gender :',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dancing Script',
                fontSize: 28,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CommonButton(
                  name: 'Male',
                  onTap: () {
                    isActive = true;
                    name = 'Male';
                    isActive = false;
                    setState(() {});
                  },
                ),
                CommonButton(
                  name: 'Female',
                  onTap: () {
                    isActive = true;
                    name = 'Female';
                    isActive = false;
                    setState(() {});
                  },
                ),
              ],
            ),
            const Text(
              'Hobbey :',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontFamily: 'Dancing Script',
                fontSize: 28,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonButton(
                  name: 'Cricket',
                  onTap: () {
                    hobbeyName.add('Cricket');
                    setState(() {});
                  },
                ),
                CommonButton(
                  name: 'Dancing',
                  onTap: () {
                    hobbeyName.add('Dnacing');
                    setState(() {});
                  },
                ),
                CommonButton(
                  name: 'Singing',
                  onTap: () {
                    hobbeyName.add('Singing');
                    setState(() {});
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CommonButton(
                  name: 'Reading',
                  onTap: () {
                    hobbeyName.add('Reading');
                    setState(() {});
                  },
                ),
                CommonButton(
                  name: 'Writing',
                  onTap: () {
                    hobbeyName.add('Writing');
                    setState(() {});
                  },
                ),
                CommonButton(
                  name: 'Playing',
                  onTap: () {
                    hobbeyName.add('Playing');
                    setState(() {});
                  },
                ),
              ],
            ),
            Center(
              child: Container(
                width: 140,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ElevatedButton(
                  onPressed: (name == '' && hobbeyName == '')
                      ? null
                      : () {
                          isPress = true;
                          setState(() {});
                        },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Dancing Script',
                    ),
                  ),
                ),
              ),
            ),
            (isPress == true)
                ? Center(
                    child: Container(
                      height: 100,
                      width: 400,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(name),
                          Text(hobbeyName.toString()),
                        ],
                      ),
                    ),
                  )
                : const Center(
                    child: Text(
                      'Do not press any buttons',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
