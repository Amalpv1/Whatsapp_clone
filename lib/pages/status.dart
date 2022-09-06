import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/staustilewidget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Stack(
          children: [
           ListTile(
              leading: CircleAvatar(
                
                backgroundImage:NetworkImage('https://res.cloudinary.com/practicaldev/image/fetch/s--Idc1cuSb--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/fpyrpmws9gwrda46lxg5.PNG') ,
              ),
              title: Text('My status'),
              subtitle:Text('yesterday,7:25') ,
            ),
            Padding(padding: EdgeInsets.fromLTRB(20, 80, 20, 30),
            child: Text('Recent uodates'),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ListView.builder(itemBuilder: (context,index){
              return Text('data');
            }),
            ),
          ],
        );
  }
}