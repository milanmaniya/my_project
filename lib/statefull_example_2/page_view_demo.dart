import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  List<Image> imageList = [
    Image.asset(
      'assets/images/bali.png',
      height: double.infinity,
      fit: BoxFit.cover,
      width: double.infinity,
    ),
    Image.asset(
      'assets/images/paris.png',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/fly.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    ),
    Image.asset(
      'assets/images/rom.png',
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/bali.png',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: PageView(
    //     // scrollDirection: Axis.vertical,
    //     children: [
    //       Text('milan'),
    //       Text('harsh'),
    //       Text('kano'),
    //     ],
    //   ),
    // );

    return Scaffold(
      body: PageView.builder(
        itemCount: imageList.length,
        itemBuilder: (context, index) => imageList[index],
      ),
    );
  }
}
