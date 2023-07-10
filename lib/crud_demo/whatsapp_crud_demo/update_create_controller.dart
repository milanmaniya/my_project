import 'package:flutter/material.dart';
import 'package:my_project/crud_demo/whatsapp_crud_demo/whatsapp_crud_demo.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class UpdateCreateController extends StatefulWidget {
  const UpdateCreateController({super.key});

  @override
  State<UpdateCreateController> createState() => _UpdateCreateControllerState();
}

class _UpdateCreateControllerState extends State<UpdateCreateController> {
  static TextEditingController txtTitleController = TextEditingController();
  static TextEditingController txtSubTitleController = TextEditingController();
  static TextEditingController txtLeadingController = TextEditingController();
  static TextEditingController txtTrilingController = TextEditingController();

  @override
  void dispose() {
    txtLeadingController.dispose();
    txtSubTitleController.dispose();
    txtTitleController.dispose();
    txtTrilingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: txtTitleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextField(
              controller: txtSubTitleController,
              decoration: InputDecoration(
                labelText: 'Sub-Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextField(
              controller: txtLeadingController,
              decoration: InputDecoration(
                labelText: 'Leading',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            TextField(
              controller: txtTrilingController,
              decoration: InputDecoration(
                labelText: 'Trialing',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                whatsappDetails.add({
                  'name': txtTitleController.text,
                  'messase': txtSubTitleController.text,
                  'date': txtTrilingController.text,
                  'url': txtLeadingController.text
                });

                txtLeadingController.clear();
                txtSubTitleController.clear();
                txtTitleController.clear();
                txtTrilingController.clear();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WhatsappCrudDemo(),
                    ));
                setState(() {});
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
