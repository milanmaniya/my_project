import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: whatsappData.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(whatsappData[index].name!),
          subtitle: Text(whatsappData[index].message!),
          trailing: Text(whatsappData[index].date!),
          leading: CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage(whatsappData[index].url!),
          ),
        ),
      ),
    );
  }
}
