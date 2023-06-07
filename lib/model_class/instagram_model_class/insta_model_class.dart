class InstagramUser {
  String? name;
  String? url;

  InstagramUser({this.name, this.url});

  factory InstagramUser.fromJson(Map<String, dynamic> json) =>
      InstagramUser(name: json['name'], url: json['url']);

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data={};

    if (name != null) {
      data['name'] = name;
    }
    if (url != null) {
      data['url'] = url;
    }

    return data;
  }
}
