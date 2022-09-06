import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/chats.dart';
import 'package:whatsapp/pages/status.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  camaeraList= await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WHATSAPP',
      home: WhatsappHome(),
    );
  }
}

class WhatsappHome extends StatefulWidget {
  WhatsappHome({Key? key}) : super(key: key);

  @override
  State<WhatsappHome> createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends  State<WhatsappHome> with SingleTickerProviderStateMixin{
@override
void initState() {
  super.initState();
  tabController=TabController(length: 4,initialIndex: 1, vsync: this);
}

  late TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        backgroundColor: const Color(0xff075e54),
        actions: [
          IconButton(
              onPressed: () {
                print('button clicked');
              },
              icon: const Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return const [
              PopupMenuItem(child: Text('New group')),
              PopupMenuItem(child: Text('New broadcast')),
              PopupMenuItem(child: Text('Linked device')),
              PopupMenuItem(child: Text('Starred msgs')),
              PopupMenuItem(child: Text('Pyments')),
              PopupMenuItem(child: Text('Settings')),
            ];
          })
        ],
        bottom:  TabBar(
          controller: tabController,
          tabs:const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            )
        ]),
      ),
      body: TabBarView(
        controller: tabController,
        children:[
        CameraPage(),
        ChatsPage(),
        StatusPage(),
        CallPage(),

      ] 
      ),
      
    );
  }
}
