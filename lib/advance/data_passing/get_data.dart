// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GetpassingData extends StatelessWidget {
  var getName;

  GetpassingData({
    Key? key,
    required this.getName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Passing Data"),
      ),
      body: Center(
        child: Text("Welcome $getName"),
      ),
    );
  }
}
