import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

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

    Widget commonContaiber() => AnimatedContainer(
          height: 330,
          color: Colors.black87,
          duration: const Duration(seconds: 10),
          curve: Curves.fastOutSlowIn,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Create",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(
                    Icons.bolt,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Create a Short",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(
                    Icons.upload,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Upoload a video",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(
                    Icons.wifi,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Go live",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                  child: Icon(
                    Icons.note_alt_outlined,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Create a post",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );

    int index = 0;

    List<IconData> icons = [
      Icons.home,
      Icons.home,
      Icons.home,
      Icons.home,
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => commonContaiber(),
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: icons,
        activeIndex: index,
        leftCornerRadius: 20,
        rightCornerRadius: 20,
        gapLocation: GapLocation.center,
        onTap: (p0) {},
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

    );
  }
}
