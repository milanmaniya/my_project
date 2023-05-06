import 'package:flutter/material.dart';
import 'package:my_project/advance/data_passing/get_data.dart';

class PassingData extends StatelessWidget {
  const PassingData({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Passing Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              //  keyboardType: TextInputType.text,
              controller: nameController,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                ("${nameController.text.toString}");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetpassingData(
                      getName: nameController.text.toString(),
                    ),
                  ),
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
