import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/model_class_whatsapp.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    for (var ele in whatsappDetails) {
      whatsappData.add(WhatsappUser.fromJson(ele));
    }

    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: List.generate(
          whatsappData.length,
          (index) => ListTile(
            title: Text(whatsappData[index].name.toString()),
            subtitle: Text(whatsappData[index].message.toString()),
            trailing: Text(whatsappData[index].date.toString()),
            leading: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage(whatsappData[index].url!),
            ),
          ),
        ),
      ),
    ));
  }
}
