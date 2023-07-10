import 'package:flutter/material.dart';

class TextFormFieldTask extends StatefulWidget {
  const TextFormFieldTask({super.key});

  @override
  State<TextFormFieldTask> createState() => _TextFormFieldTaskState();
}

class _TextFormFieldTaskState extends State<TextFormFieldTask> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _txtNameController = TextEditingController();
  final TextEditingController _txtSerNameController = TextEditingController();
  final TextEditingController _txtMoblineNoController = TextEditingController();
  final TextEditingController _txtAgeController = TextEditingController();
  final TextEditingController _txtEmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: _globalKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              TextFormField(
                // autovalidateMode: AutovalidateMode.always,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Required';
                  } else {
                    return null;
                  }
                },
                controller: _txtNameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Required';
                  } else {
                    return null;
                  }
                },
                controller: _txtSerNameController,
                decoration: InputDecoration(
                  labelText: 'Ser Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Required';
                  } else if (value.length > 10) {
                    return 'maximum digit are available for 10 ';
                  } else if (value.length < 10) {
                    return 'minimum digits are required for 10';
                  } else {
                    return null;
                  }
                },
                controller: _txtMoblineNoController,
                decoration: InputDecoration(
                  labelText: 'Mobile No',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Required';
                  } else {
                    return null;
                  }
                },
                controller: _txtAgeController,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Required';
                  } else {
                    return null;
                  }
                },
                controller: _txtEmailController,
                decoration: InputDecoration(
                  labelText: 'Email Id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data is available')));
                  }
                  setState(() {});
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
