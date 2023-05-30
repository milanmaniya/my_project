import 'package:flutter/material.dart';

class MaterialButtonDemo extends StatelessWidget {
  const MaterialButtonDemo({super.key});

  static GlobalKey<ScaffoldState> drawerGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    Widget commonDrawer({
      required String label,
      required IconData icon,
    }) =>
        ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          title: Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
        );

    return Scaffold(
      key: drawerGlobalKey,
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
            InkWell(
              onTap: () {
                drawerGlobalKey.currentState!.openDrawer();
              },
              child: const Text("Open drawer"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.black87,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Gmail",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
                const Divider(
                  height: 15,
                  color: Colors.white,
                ),
                commonDrawer(
                    label: 'All inboxes', icon: Icons.picture_as_pdf_rounded),
                const Divider(
                  color: Colors.white,
                ),
                commonDrawer(label: 'Primary', icon: Icons.image),
                commonDrawer(label: 'Promotions', icon: Icons.shopping_bag),
                commonDrawer(label: 'Social', icon: Icons.group),
                const Text(
                  "All labels",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                commonDrawer(label: 'Started', icon: Icons.star_border),
                commonDrawer(label: 'Snoozed', icon: Icons.snooze_outlined),
                commonDrawer(
                    label: 'Important', icon: Icons.label_important_outline),
                commonDrawer(label: 'Sent', icon: Icons.send),
                commonDrawer(
                    label: 'Scheduled', icon: Icons.send_and_archive_outlined),
                commonDrawer(label: 'Outbox', icon: Icons.outbox),
                commonDrawer(label: 'Drafts', icon: Icons.drafts),
                commonDrawer(
                    label: 'All mail', icon: Icons.mail_outline_rounded),
                commonDrawer(
                    label: 'Spam', icon: Icons.health_and_safety_sharp),
                commonDrawer(label: 'Bin', icon: Icons.delete),
                const Text(
                  "Google Maps",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                commonDrawer(
                    label: 'Calender', icon: Icons.calendar_today_rounded),
                commonDrawer(
                    label: 'Contacts', icon: Icons.person_pin_outlined),
                const Divider(
                  height: 15,
                  color: Colors.white,
                ),
                commonDrawer(label: 'Settings', icon: Icons.settings),
                commonDrawer(label: 'Help and feedbacks', icon: Icons.help),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(),
      drawer: Drawer(
        backgroundColor: Colors.black87,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Gmail",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                  ),
                ),
                const Divider(
                  height: 15,
                  color: Colors.white,
                ),
                commonDrawer(
                    label: 'All inboxes', icon: Icons.picture_as_pdf_rounded),
                const Divider(
                  color: Colors.white,
                ),
                commonDrawer(label: 'Primary', icon: Icons.image),
                commonDrawer(label: 'Promotions', icon: Icons.shopping_bag),
                commonDrawer(label: 'Social', icon: Icons.group),
                const Text(
                  "All labels",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                commonDrawer(label: 'Started', icon: Icons.star_border),
                commonDrawer(label: 'Snoozed', icon: Icons.snooze_outlined),
                commonDrawer(
                    label: 'Important', icon: Icons.label_important_outline),
                commonDrawer(label: 'Sent', icon: Icons.send),
                commonDrawer(
                    label: 'Scheduled', icon: Icons.send_and_archive_outlined),
                commonDrawer(label: 'Outbox', icon: Icons.outbox),
                commonDrawer(label: 'Drafts', icon: Icons.drafts),
                commonDrawer(
                    label: 'All mail', icon: Icons.mail_outline_rounded),
                commonDrawer(
                    label: 'Spam', icon: Icons.health_and_safety_sharp),
                commonDrawer(label: 'Bin', icon: Icons.delete),
                const Text(
                  "Google Maps",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
                commonDrawer(
                    label: 'Calender', icon: Icons.calendar_today_rounded),
                commonDrawer(
                    label: 'Contacts', icon: Icons.person_pin_outlined),
                const Divider(
                  height: 15,
                  color: Colors.white,
                ),
                commonDrawer(label: 'Settings', icon: Icons.settings),
                commonDrawer(label: 'Help and feedbacks', icon: Icons.help),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Hyy, i am floating action button");
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
