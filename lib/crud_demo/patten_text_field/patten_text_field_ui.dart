import 'package:flutter/material.dart';

class PattenTextFieldUi extends StatefulWidget {
  const PattenTextFieldUi({super.key});

  @override
  State<PattenTextFieldUi> createState() => _PattenTextFieldUiState();
}

class _PattenTextFieldUiState extends State<PattenTextFieldUi> {
  final TextEditingController _editingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: _editingController,
            ),
            
          ],
        ),
      ),
    );
  }
}
