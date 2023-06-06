import 'package:flutter/material.dart';
import 'package:my_project/practice/Ui7/list_od_model_row_data.dart';

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
