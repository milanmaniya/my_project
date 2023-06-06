class WhatsappModel {
  String? name;
  String? url;
  String? message;
  String? date;

  WhatsappModel({this.name, this.message, this.url, this.date});

  factory WhatsappModel.fromJson(Map<String, dynamic> json) => WhatsappModel(
      name: json['name'],
      message: json['message'],
      url: json['url'],
      date: json['date']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    if (name != null) {
      data['name'] = name;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (date != null) {
      data['date'] = date;
    }

    return data;
  }
}


