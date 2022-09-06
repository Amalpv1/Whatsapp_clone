import 'package:flutter/material.dart';
import 'package:whatsapp/model/statusmodel.dart';

class StatustileWidget extends StatelessWidget {
  StatustileWidget({Key? key, required this.singlestatus}) : super(key: key);
  Statusmodel singlestatus;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(singlestatus.avatar),
      ),
      title: Text(singlestatus.name),
    );
  }
}