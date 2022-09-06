import 'package:flutter/material.dart';
import 'package:whatsapp/model/list_model.dart';
import 'package:whatsapp/pages/chatdetails.dart';

class ListTileWidget extends StatelessWidget {
  ListTileWidget({Key? key, required this.singleobject}) : super(key: key);
  Welcome singleobject;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatDetails(name: singleobject.name,avatar: singleobject.avatar,);
            },
          ),
        );
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(singleobject.avatar),
        ),
        title: Text(singleobject.name),
        trailing: Text(singleobject.time),
        subtitle: Text(singleobject.message),
      ),
    );
  }
}
