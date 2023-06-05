import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/row_data_whatsapp.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: List.generate(myDetails.length, (index) =>  ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(myDetails[index]['url']),
                  radius: 18,
                ),
                title: Text(myDetails[index]['name']),
                subtitle: Text(myDetails[index]['message']),
                trailing: Text(myDetails[index]['date']),
              ),)
      ),
    );
  }
}