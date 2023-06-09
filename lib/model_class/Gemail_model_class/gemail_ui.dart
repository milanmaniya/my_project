import 'package:flutter/material.dart';
import 'package:my_project/model_class/Gemail_model_class/gmail_model_class.dart';
import 'package:my_project/model_class/Gemail_model_class/row_data_gmail.dart';

class GemailUi extends StatelessWidget {
  const GemailUi({super.key});

  @override
  Widget build(BuildContext context) {
    for (var element in gmailDetails) {
      gmailData.add(GmailUser.fromJson(element));
    }

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                gmailData.length,
                (index) => ListTile(
                  title: Text(gmailData[index].name.toString()),
                  leading: Icon(gmailData[index].icon),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
