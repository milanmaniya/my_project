import 'package:flutter/material.dart';
import 'package:my_project/model_class/model_class_demo/model_demo.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<NameModel> nameList = [
    NameModel(
        name: 'Milan',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Maniya',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Rahul',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Harsh',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Kano',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Raju',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Milan',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
    NameModel(
        name: 'Raju',
        age: 18,
        profession: 'Developer',
        details: Details(fatherName: 'Ramesh Bhai', motherName: 'Shobhna Ben')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Model Class'),
      ),
      body: ListView.builder(
        itemCount: nameList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            nameList.removeAt(index);
            setState(() {});
          },
          child: ListTile(
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                  'assets/images/WhatsApp Image 2023-06-05 at 15.27.07.jpg'),
            ),
            title: Text(nameList[index].name),
            subtitle: Text(nameList[index].age.toString()),
            trailing: Text(nameList[index].profession),
            // trailing: IconButton(
            //   onPressed: () {
            //     nameList.removeAt(index);
            //     setState(() {});
            //   },
            //   icon: const Icon(Icons.delete),
            // ),
          ),
        ),
      ),
    );
  }
}
