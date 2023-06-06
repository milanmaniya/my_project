import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/row_data_whatsapp.dart';
import 'package:my_project/practice/Ui7/list_od_model_row_data.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        body: Column(
            children: List.generate(
          whatsappData.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(whatsappData[index].url!),
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
