class WhatsappUser {
  String? name;
  String? url;
  String? message;
  String? date;

  WhatsappUser({this.name, this.url, this.message, this.date});

  factory WhatsappUser.fromJson(Map<String, dynamic> json) => WhatsappUser(
      name: json['name'],
      url: json['url'],
      message: json['messase'],
      date: json['date']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    if (name != null) {
      data['name'] = name;
    }
    if (url != null) {
      data['url'] = url;
    }
    if (message != null) {
      data['messase'] = message;
    }
    if (date != null) {
      data['date'] = date;
    }

    return data;
  }
}
