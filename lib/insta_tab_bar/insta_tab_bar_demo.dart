import 'package:flutter/material.dart';
import 'package:my_project/practice/Ui12/Shopping_pag1.dart';
import 'package:my_project/practice/Ui12/shopping_page2.dart';

class InstaTabBarDemo extends StatefulWidget {
  const InstaTabBarDemo({super.key});

  @override
  State<InstaTabBarDemo> createState() => _InstaTabBarDemoState();
}

class _InstaTabBarDemoState extends State<InstaTabBarDemo> {
  List<Widget> pageList = [
    const Page1(),
    const Page2(),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: pageList.length,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text('Professinal dashboard'),
              ),
              const TabBar(
                tabs: [
                  Icon(
                    Icons.grid_3x3_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  Icon(
                    Icons.account_box_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 600,
                width: 700,
                child: TabBarView(
                  children: [
                    Page1(),
                    Page2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
