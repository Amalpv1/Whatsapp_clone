

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/chatdata.dart';

class ChatDetails extends StatefulWidget {
  ChatDetails({Key? key,required this.name,required this.avatar}) : super(key: key);
  String name;
  String avatar;

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color(0xff075e54),
        leadingWidth: 70,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                backgroundImage: NetworkImage(widget.avatar),
              )
            ],
          ),
        ),
        title: Column(
          children: [
            Text(widget.name),
            Text('11:30pm',style: TextStyle(
              fontSize: 12,
            ),),
          ],
        ),
        titleSpacing: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem( child: Text('View contact')),
              PopupMenuItem( child: Text('Media,Links,and docs')),
              PopupMenuItem( child: Text('Mute nitifications')),
              PopupMenuItem( child: Text('Disappearing messages')),
              PopupMenuItem( child: Text('search')),
              PopupMenuItem( child: Text('Wallpaper')),
              PopupMenuItem( child: Text('More')),

            ];
          })
        ],
      ),
      body: ChatData(),
    );
  }
}