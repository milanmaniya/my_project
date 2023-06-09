import 'package:flutter/material.dart';

class GridViewBuilderDemo extends StatelessWidget {
  GridViewBuilderDemo({super.key});

  final List<Map<String, dynamic>> gridData = [
    {
      "icon": Icons.edit,
      "name": "Add a status",
    },
    {
      "icon": Icons.all_inbox,
      "name": "All inboxes",
    },
    {"icon": Icons.inbox, "name": "Primary", "numOfMassage": "367"},
    {"icon": Icons.group_add_outlined, "name": "Social", "numOfMassage": "10"},
    {
      "icon": Icons.star_outline,
      "name": "Starred",
    },
    {
      "icon": Icons.schedule,
      "name": "Snoozed",
    },
    {"icon": Icons.label_important, "name": "Important", "numOfMassage": "12"},
    {"icon": Icons.send_rounded, "name": "Send", "numOfMassage": "2"},
    {
      "icon": Icons.schedule_send_outlined,
      "name": "Scheduled",
    },
    {
      "icon": Icons.send_and_archive_outlined,
      "name": "Outbox",
    },
    {"icon": Icons.find_in_page, "name": "Draft", "numOfMassage": "3"},
    {"icon": Icons.mail_outline, "name": "All mail", "numOfMassage": "99+"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.black12,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(gridData[index]['icon']),
                    Text(gridData[index]['name'])
                  ],
                ),
              ),
              itemCount: gridData.length,
            ),
          ),
        ],
      ),
    );
  }
}
