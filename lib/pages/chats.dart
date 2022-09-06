import 'package:flutter/material.dart';
import 'package:whatsapp/model/list_model.dart';
import 'package:whatsapp/widgets/list_tile.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ListTileWidget(singleobject: chatList[index]);
          },
          itemCount:chatList.length ,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.message),
          backgroundColor: Colors.green[600],
        ));
  }
}
List<Welcome>chatList=[
  
  Welcome(avatar: 'https://i0.wp.com/www.cssscript.com/wp-content/uploads/2020/12/Customizable-SVG-Avatar-Generator-In-JavaScript-Avataaars.js.png?fit=438%2C408&ssl=1', name: 'athul', message: 'haii', time: '11pm', isGroup: true),
  Welcome(avatar: 'https://downloadillustrations.com/wp-content/uploads/2020/12/CleanShot-2020-12-06-at-06.57.14.png', name: 'surya', message: 'hello', time: '10pm', isGroup: false),
  Welcome(avatar: 'https://raw.githubusercontent.com/fangpenlin/avataaars/HEAD/avataaars-example.png?raw=true', name: 'new', message: 'welcome', time: '12Am', isGroup: false),
];

