import 'package:flutter/material.dart';

// build whatsapp ui for using to list.generate and ListTile

class WhatsappUi1 extends StatelessWidget {
  const WhatsappUi1({super.key});

  @override
  Widget build(BuildContext context) {
    Widget common(
            {required IconData icon,
            required String title,
            required String subTitle,
            required String date}) =>
        ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          title: Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          subtitle: Text(subTitle, style: const TextStyle(color: Colors.white)),
          trailing: Text(date, style: const TextStyle(color: Colors.white)),
        );

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
            children: [
              ...List.generate(
                20,
                (index) => common(
                    title: "Milan Maniya",
                    subTitle: "Hyy, Good Morning",
                    icon: Icons.account_circle_outlined,
                    date: "01/05/2023"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
