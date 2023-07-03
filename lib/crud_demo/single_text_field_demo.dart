import 'package:flutter/material.dart';

class SingleTextFieldDemo extends StatefulWidget {
  const SingleTextFieldDemo({super.key});

  @override
  State<SingleTextFieldDemo> createState() => _SingleTextFieldDemoState();
}

class _SingleTextFieldDemoState extends State<SingleTextFieldDemo> {
  final TextEditingController _txtUserNameController = TextEditingController();

  List<String> userData = [];
  bool isUpdate = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: _txtUserNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: isUpdate
                  ? () {
                      userData[currentIndex] = _txtUserNameController.text;
                      setState(() {});
                    }
                  : () {
                      userData.add(_txtUserNameController.text);
                      _txtUserNameController.clear();
                      setState(() {});
                    },
              child: isUpdate ? const Text('Update') : const Text('Submit'),
            ),
            (userData.isEmpty)
                ? const Text('There is no data')
                : Expanded(
                    child: ListView.builder(
                      itemCount: userData.length,
                      itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          currentIndex = index;
                          isUpdate = true;
                          _txtUserNameController.text = userData[index];
                          setState(() {});
                        },
                        title: Text(userData[index]),
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
