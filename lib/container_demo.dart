import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        alignment: Alignment.center,
        margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        decoration: BoxDecoration(
          //color: Colors.blue,
          border: Border.all(
            color: Colors.red,
            width: 3,
            strokeAlign: 4,
          ),
          // borderRadius: BorderRadius.circular(20),
          // image: const DecorationImage(
          //   image: NetworkImage(
          //       "https://m.media-amazon.com/images/I/61EC2FCyx1L._UL1440_.jpg"),
          // ),

          // linear gradient
          // gradient: const LinearGradient(
          //     colors: [Colors.red, Colors.yellow, Colors.green],
          //     begin: Alignment.topRight,
          //     end: Alignment.bottomLeft,
          //     stops: [0.2, 0.5, 0.4],
          //     ),

          // radial gradient
          gradient: const RadialGradient(
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellowAccent,
              Colors.lightGreen,
              Colors.lightBlue,
              Colors.deepPurpleAccent,
              Colors.purpleAccent
            ],
            center: Alignment.bottomLeft,
            focal: Alignment.bottomLeft,
            focalRadius: 0.1,
            radius: 1.2,
            tileMode: TileMode.mirror,
          ),
          shape: BoxShape.rectangle,
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 15,
                offset: Offset(5, 10)),
            BoxShadow(
                color: Colors.red,
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(10, 20)),
          ],
        ),

        //child: Text("Maniya Milan"),
      ),
    );
  }
}
