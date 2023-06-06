class NameModel {
  String name;
  int age;
  String profession;
  Details details;

  NameModel(
      {required this.name,
      required this.age,
      required this.profession,
      required this.details});

  factory NameModel.fromJson(Map<String, dynamic> json) => NameModel(
      name: json['name'],
      age: json['age'],
      profession: json['profession'],
      details: Details(
          fatherName: json['fatherName'], motherName: json['motherName']));

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};

    data['name'] = name;
    data['age'] = age;
    data['profession'] = profession;
    data['details'] = details;

    return data;
  }
}

class Details {
  String fatherName;
  String motherName;

  Details({
    required this.fatherName,
    required this.motherName,
  });
}
