import 'package:flutter/material.dart';

class CallsDemo extends StatefulWidget {
  const CallsDemo({super.key});

  @override
  State<CallsDemo> createState() => _CallsDemoState();
}

class _CallsDemoState extends State<CallsDemo> {
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
    return SizedBox(
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
