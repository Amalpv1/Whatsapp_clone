import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
   CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController camcontroller;
  var cameravalue;
  @override
void initState() {
    // TODO: implement initState
    super.initState();
    camcontroller=CameraController(camaeraList![0], ResolutionPreset.high);
     cameravalue=camcontroller.initialize();
  }
 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.done){
              return CameraPreview(camcontroller);
            }
            return CircularProgressIndicator();
          },
          future: cameravalue,
          )
        ],
      ),
    );
  }
}
List<CameraDescription> ?camaeraList;