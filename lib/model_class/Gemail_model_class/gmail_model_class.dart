import 'package:flutter/widgets.dart';

class GmailUser {
  String? name;
  IconData? icon;

  GmailUser({this.name, this.icon});

  factory GmailUser.fromJson(Map<String, dynamic> json) =>
      GmailUser(name: json['name'], icon: json['url']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    if (name != null) {
      data['name'] = name;
    }
    if (icon!= null) {}
    data['url'] = icon;
    return data;
  }
}
