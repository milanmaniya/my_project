import 'package:flutter/material.dart';
import 'package:my_project/list_of_map_demo/row_data_whatsapp.dart';

class WhatsappListOfMapDemo extends StatelessWidget {
  const WhatsappListOfMapDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(18, 140, 126, 5),
        title: const Text("WhatsApp"),
        actions: const [
          SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.camera_alt_outlined),
                Icon(Icons.search_outlined),
                Icon(Icons.more_vert),
              ],
            ),
          ),
        ],
        elevation: 5,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.groups,
                color: Colors.white70,
                size: 27,
              ),
              Text(
                "Chats",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              Text(
                "Status",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              Text(
                "Calls",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: 684,
        width: double.infinity,
        color: const Color.fromRGBO(7, 94, 84, 10),
        child: SingleChildScrollView(
            child: Column(
                children: List.generate(
          myDetails.length,
          (index) => ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(myDetails[index]['url']),
              radius: 18,
            ),
            title: Text(myDetails[index]['name']),
            subtitle: Text(myDetails[index]['message']),
            trailing: Text(myDetails[index]['date']),
          ),
        ))),
      ),
    );
  }
}
