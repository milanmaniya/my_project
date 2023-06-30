import 'package:flutter/material.dart';
import 'package:my_project/crud_demo/paliendrome_text_field_demo/logic_paliendrome_number.dart';

class TextFieldExercise extends StatefulWidget {
  const TextFieldExercise({super.key});

  @override
  State<TextFieldExercise> createState() => _TextFieldExerciseState();
}

class _TextFieldExerciseState extends State<TextFieldExercise> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: _textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                try {
                  int txtvalue = int.parse(_textEditingController.text);
                  PaliendromeNumber.checkPaliendrome(txtvalue);
                } catch (e) {
                  PaliendromeNumber.checkStringPaliendrome(
                      _textEditingController.text);
                }
                setState(() {});
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Dancing Script',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              PaliendromeNumber.message.toString(),
              style: const TextStyle(
                color: Colors.black54,
                fontFamily: 'Dancing Script',
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
