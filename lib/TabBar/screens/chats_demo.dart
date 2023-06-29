import 'package:flutter/material.dart';

class ChatsDemo extends StatefulWidget {
  const ChatsDemo({super.key});

  @override
  State<ChatsDemo> createState() => _ChatsDemoState();
}

class _ChatsDemoState extends State<ChatsDemo> {
  Widget common(
          {required IconData icon,
          required String title,
          required String subTitle,
          required String date}) =>
      ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
          size: 40,
        ),
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Dancing Script',
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Dancing Script',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          date,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: 'Dancing Script',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 684,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              20,
              (index) => common(
                title: "Milan Maniya",
                subTitle: "Hyy, Good Morning",
                icon: Icons.account_circle_outlined,
                date: "01/05/2023",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
