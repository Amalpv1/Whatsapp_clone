// To parse this JSON data, do
//
//     final statusmodel = statusmodelFromJson(jsonString);

import 'dart:convert';

Statusmodel statusmodelFromJson(String str) => Statusmodel.fromJson(json.decode(str));

String statusmodelToJson(Statusmodel data) => json.encode(data.toJson());

class Statusmodel {
    Statusmodel({
      required  this.avatar,
      required  this.name,
      required  this.viewed,
      required  this.time,
    });

    String avatar;
    String name;
    bool viewed;
    String time;

    factory Statusmodel.fromJson(Map<String, dynamic> json) => Statusmodel(
        avatar: json["avatar"],
        name: json["name"],
        viewed: json["viewed"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "viewed": viewed,
        "time": time,
    };
}

