import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

Widget commonText({
  required String name,
  double size = 22,
}) =>
    Text(
      name,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
      ),
    );

Widget commonListTile({
  required IconData icon,
  required String name,
}) =>
    ListTile(
      leading: Icon(
        icon,
        color: Colors.white,
        size: 20,
      ),
      title: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );

class _DrawerDemoState extends State<DrawerDemo> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: Center(
        child: InkWell(
          onTap: () {
            scaffoldkey.currentState!.openDrawer();
          },
          child: const Icon(Icons.home),
        ),
      ),
      drawer: Drawer(
        elevation: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
       
        surfaceTintColor: Colors.red,
        backgroundColor: Colors.black54,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 17, right: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                commonText(
                  name: 'Gmail',
                ),
                const Divider(
                  height: 20,
                  color: Colors.white,
                ),
                commonListTile(
                    icon: Icons.picture_as_pdf_outlined, name: 'All Inbox'),
                const Divider(
                  height: 20,
                  color: Colors.white,
                ),
                commonListTile(
                    icon: Icons.star_border_outlined, name: 'Started'),
                commonListTile(icon: Icons.timer, name: 'Snoozed'),
                commonListTile(icon: Icons.send, name: 'Sent'),
                commonListTile(icon: Icons.drafts_outlined, name: 'Draft'),
                commonListTile(icon: Icons.chat, name: 'Chats'),
                commonListTile(
                    icon: Icons.arrow_circle_right_rounded, name: 'Schedule'),
                commonListTile(icon: Icons.mail, name: 'All Mail'),
                commonListTile(icon: Icons.info, name: 'Spam'),
                commonListTile(icon: Icons.delete, name: 'Trash'),
                const ExpansionTile(
                  title: Text(
                    "Categories",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  leading: Icon(
                    Icons.double_arrow_outlined,
                    color: Colors.white,
                    size: 22,
                  ),
                  trailing: Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Colors.white,
                    size: 22,
                  ),
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.people_alt_sharp,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        "Social",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.arrow_circle_down_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        "Updates",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        "Formus",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.sell_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      title: Text(
                        "Promotions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(),
    );
  }
}
