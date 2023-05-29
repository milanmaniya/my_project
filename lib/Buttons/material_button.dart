import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatelessWidget {
  const MaterialButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                print("Hyy, I am material button");
              },
              child: const Text("Material Button"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Hyy, I am elevated button");
              },
              child: const Text("Elevated button"),
            ),
            TextButton(
              onPressed: () {
                print("Hyy, i am text button");
              },
              child: const Text("Text Button"),
            ),
            IconButton(
              onPressed: () {
                print("Hyy, i m icon button");
              },
              icon: const Icon(Icons.home),
            ),
            OutlinedButton(
              onPressed: () {
                print("Hyy, i am outlined button");
              },
              child: const Text("Outlined Button"),
            ),
            // FloatingActionButton(
            //   onPressed: () {
            //     print("Hyy, i am floating action button");
            //   },
            //   child: const Icon(Icons.home),
            // ),
            // FloatingActionButton.extended(
            //   icon: const Icon(Icons.home),
            //   onPressed: () {
            //     print("Hyy, i am floating action button extended");
            //   },
            //   label: const Text("floating action button extended"),
            // ),
            // FloatingActionButton.large(
            //   onPressed: () {
            //     print("Hyy, i am floating action button large");
            //   },
            //   child: const Icon(Icons.home),
            // ),
            // FloatingActionButton.small(
            //   onPressed: () {
            //     print("Hyy, i am floating action button small");
            //   },
            //   child: const Icon(Icons.home),
            // )
            GestureDetector(
              onTap: () {
                print("Hyy, i am tapable container");
              },
              onDoubleTap: () {
                print("Hyy, i am double tapable event");
              },
              onLongPress: () {
                print("Hyy, i am long presss event");
              },
              child: Card(
                elevation: 50,
                child: Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  child: const Text(
                    "Milan Maniya",
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Hyy, i am bottom sheet");
                showModalBottomSheet(
                  context: context,
                  builder: (context) => Container(),
                );
              },
              child: const Text("Bottom Sheet"),
            ),
            ElevatedButton(
              onPressed: () {
                print("Hyy, i am snack bar");
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("milan maniya"),
                  ),
                );
              },
              child: const Text("Snack Bar"),
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hyy, i am floating action button");
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
