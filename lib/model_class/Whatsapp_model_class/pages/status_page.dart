import 'package:flutter/material.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
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
