import 'package:flutter/material.dart';
import 'package:my_project/string_extemsion_demo_validation/string_extension.dart';

class SingleTextFormFieldExtensionDemo extends StatefulWidget {
  const SingleTextFormFieldExtensionDemo({super.key});

  @override
  State<SingleTextFormFieldExtensionDemo> createState() =>
      _SingleTextFormFieldExtensionDemoState();
}

class _SingleTextFormFieldExtensionDemoState
    extends State<SingleTextFormFieldExtensionDemo> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                validator: (value) => value!.isValid,
                decoration: InputDecoration(
                  labelText: 'User Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20 ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('data is valid')));
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
