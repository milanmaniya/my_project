import 'package:flutter/material.dart';
import 'package:my_project/crud_demo/whatsapp_crud_demo/update_create_controller.dart';
import 'package:my_project/model_class/Whatsapp_model_class/model_class_whatsapp.dart';
import 'package:my_project/model_class/Whatsapp_model_class/row_data_whatsapp.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    for (var ele in whatsappDetails) {
      whatsappData.add(WhatsappUser.fromJson(ele));
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // whatsappDetails.add({
          //   'name': "sscs cms mc",
          //   'url': "assets/images/WhatsApp Image 2023-06-05 at 15.27.07.jpg",
          //   'messase': "Good not morning",
          //   'date': "12/05/2022"
          // });

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UpdateCreateController(),
              ));
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            whatsappData.length,
            (index) => Dismissible(
              onDismissed: (direction) {
                whatsappData.removeAt(index);
                setState(() {});
              },
              key: UniqueKey(),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateCreateController(),
                      ));

                    


                  setState(() {});
                },
                title: Text(whatsappData[index].name.toString()),
                subtitle: Text(whatsappData[index].message.toString()),
                trailing: Text(whatsappData[index].date.toString()),
                leading: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(whatsappData[index].url!),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
