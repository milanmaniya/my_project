import 'package:flutter/material.dart';
import 'package:my_project/practice/Ui7/list_od_model_row_data.dart';
import 'package:my_project/practice/Ui7/model_class_whatsapp.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    for (var ele in myDetails) {
      whatsappData.add(WhatsappModel.fromJson(ele));
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            children: List.generate(
          whatsappData.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(whatsappData[index].url.toString()),
              radius: 18,
            ),
            title: Text(whatsappData[index].name!),
            subtitle: Text(whatsappData[index].message!),
            trailing: Text(whatsappData[index].date!),
          ),
        )),
      ),
    );
  }
}
