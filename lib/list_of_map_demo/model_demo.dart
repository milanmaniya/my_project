import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/row_data_demo.dart';
import 'package:my_project/list_of_map_demo/user_model.dart';

class ModelScreenDemo extends StatelessWidget {
  const ModelScreenDemo({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in userDetails) {
      userData.add(User.fromJson(element));
    }

    return Scaffold(
      body: Column(
        children: List.generate(
          userData.length,
          (index) => ListTile(
            title: Text(userData[index].userName.toString()),
            subtitle: Text(
              userData[index].emailId.toString(),
            ),
          ),
        ),
      ),
    );
  }
}
