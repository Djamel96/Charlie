import 'dart:convert';

class Street {
  final String number;
  final String name;

  Street({
    required this.number,
    required this.name,
  });

  factory Street.fromRawJson(String str) => Street.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Street.fromJson(Map<String, dynamic> json) => Street(
        number: json["number"].toString(),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "name": name,
      };
}
