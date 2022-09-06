// To parse this JSON data, do
//
//     final msgModel = msgModelFromJson(jsonString);

import 'dart:convert';

MsgModel msgModelFromJson(String str) => MsgModel.fromJson(json.decode(str));

String msgModelToJson(MsgModel data) => json.encode(data.toJson());

class MsgModel {
    MsgModel({
       required this.isSent,
       required this.message,
       required this.isRead,
       required this.time,
    });

    bool isSent;
    String message;
    bool isRead;
    String time;

    factory MsgModel.fromJson(Map<String, dynamic> json) => MsgModel(
        isSent: json["isSent"],
        message: json["message"],
        isRead: json["isRead"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "isSent": isSent,
        "message": message,
        "isRead": isRead,
        "time": time,
    };
}
