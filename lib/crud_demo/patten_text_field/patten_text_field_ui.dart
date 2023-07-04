import 'package:flutter/material.dart';

class PattenTextFieldUi extends StatefulWidget {
  const PattenTextFieldUi({super.key});

  @override
  State<PattenTextFieldUi> createState() => _PattenTextFieldUiState();
}

class _PattenTextFieldUiState extends State<PattenTextFieldUi> {
  final TextEditingController _editingController = TextEditingController();

  String value = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: _editingController,
              decoration: InputDecoration(
                labelText: 'Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 24,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (context, index) => ElevatedButton(
                  onPressed: () {
                
                    setState(() {});
                  },
                  child: Text(
                    value,
                    style: const TextStyle(
                      fontFamily: 'Dancing Script',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(value),
            ),
          ],
        ),
      ),
    );
  }
}
