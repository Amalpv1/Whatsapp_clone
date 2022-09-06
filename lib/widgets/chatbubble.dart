import 'package:flutter/material.dart';
import 'package:whatsapp/model/chatmodel.dart';

class ChatBubble extends StatelessWidget {
  ChatBubble({Key? key, required this.singlMsg}) : super(key: key);
  MsgModel singlMsg;

  @override
  Widget build(BuildContext context) {
    return Align(
      
      alignment: singlMsg.isSent? Alignment.centerRight :Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 200),
        child: Card(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 10, 30, 20),
                child: Text(singlMsg.message,
                style: TextStyle(
                  fontSize: 15,
                ),
                ),
              ),
              Positioned(
                child: Row(
                  children: [
                    Text("11:30"),
                    SizedBox(
                      width: 5,
                    ),
                    singlMsg.isSent
                        ? Icon(
                            Icons.done_all,
                            size: 15,
                            color: singlMsg.isRead ? Colors.blue : Colors.black,
                          )
                        : Container(),
                  ],
                ),
                bottom: 4,
                right: 2,
              ),
            ],
          ),
          color: singlMsg.isSent ? Color(0xffdcf8c6) : Colors.white,
        ),
      ),
    );
  }
}
