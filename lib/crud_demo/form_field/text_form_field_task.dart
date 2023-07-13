import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class TextFormFieldTask extends StatefulWidget {
  const TextFormFieldTask({super.key});

  @override
  State<TextFormFieldTask> createState() => _TextFormFieldTaskState();
}

class _TextFormFieldTaskState extends State<TextFormFieldTask> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _txtNameController = TextEditingController();
  final TextEditingController _txtMoblineNoController = TextEditingController();
  final TextEditingController _txtAgeController = TextEditingController();
  final TextEditingController _txtEmailController = TextEditingController();
  final TextEditingController _txtPasswordController = TextEditingController();
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
                validator: MultiValidator([
                  RequiredValidator(errorText: 'UserName are required'),
                ]),
                controller: _txtNameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Email address are required'),
                  EmailValidator(errorText: 'This email address is not valid'),
                ]),
                controller: _txtEmailController,
                decoration: InputDecoration(
                  labelText: 'Email Id',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                obscureText: true,
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Password are required'),
                  MinLengthValidator(8,
                      errorText:
                          'Minimum leangth are required for 8 character'),
                ]),
                controller: _txtPasswordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return 'Required';
                //   } else if (value.length > 10) {
                //     return 'maximum digit are required for 10 ';
                //   } else if (value.length < 10) {
                //     return 'minimum digits are required for 10';
                //   } else {
                //     return null;
                //   }
                // },

                validator: MultiValidator([
                  RequiredValidator(errorText: 'Mobile number are required'),
                  MinLengthValidator(10,
                      errorText: 'Minimum 10 digit are required'),
                  MaxLengthValidator(10,
                      errorText: 'This mobile number is not valid'),
                ]),

                controller: _txtMoblineNoController,
                decoration: InputDecoration(
                  labelText: 'Mobile No',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              TextFormField(
                controller: _txtAgeController,
                decoration: InputDecoration(
                  labelText: 'Age',
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
