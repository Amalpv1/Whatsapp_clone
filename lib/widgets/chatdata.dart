import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/model/chatmodel.dart';
import 'package:whatsapp/widgets/chatbubble.dart';

class ChatData extends StatefulWidget {
  ChatData({Key? key}) : super(key: key);
  List<MsgModel> msgList = [
    MsgModel(isSent: true, message: 'haii', isRead: true, time: '10pm'),
    MsgModel(isSent: false, message: 'hello', isRead: false, time: '10:30'),
    MsgModel(isSent: true, message: 'how are you', isRead: false, time: '10pm'),
    MsgModel(isSent: false, message: 'fine', isRead: false, time: '10:30'),
    MsgModel(isSent: true, message: 'haii', isRead: true, time: '10pm'),
    MsgModel(isSent: false, message: 'hello', isRead: false, time: '10:30'),
  ];

  @override
  State<ChatData> createState() => _ChatDataState();
}

class _ChatDataState extends State<ChatData> {
  TextEditingController textcontroller = TextEditingController();

  bool isSend = false;
  FocusScopeNode textfocus=FocusScopeNode();
  bool showEmoji=true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'asset/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        ListView.builder(
          itemBuilder: (context, index) {
            return ChatBubble(
              singlMsg: widget.msgList[index],
            );
          },
          itemCount: widget.msgList.length,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 60,
                  child: Card(
                    child: TextField(
                      onTap: () {
                        setState(() {
                          showEmoji=false;
                        });
                       
                      },
                      
                      onChanged: (value) {
                        if (value.length > 0) {
                          setState(() {
                            isSend = true;
                          });
                        } else {
                          setState(() {
                            isSend = false;
                          });
                        }
                      },
                      controller: textcontroller,
                      focusNode: textfocus,
                      decoration: InputDecoration(
                        hintText: 'message',
                        prefixIcon: IconButton(
                            onPressed: () {
                              textfocus.unfocus();
                              setState(() {
                                showEmoji=!showEmoji;
                              });
                            },
                            icon: Icon(
                              showEmoji? Icons.emoji_emotions:Icons.keyboard_alt,
                              color: Colors.blue,
                            )),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.attach_file)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.currency_rupee)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.camera_alt)),
                          ],
                        ),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: CircleAvatar(
                    radius: 25,
                    child: IconButton(
                        onPressed: () {},
                        icon: isSend ? Icon(Icons.send) : Icon(Icons.mic)),
                  ),
                ),
              ],
            ),
            showEmoji?selectEmoji():Container(),
          ],
        ),
      ],
    );
  }
  Widget selectEmoji(){
 return SizedBox(
   height: 250,
  
   child: EmojiPicker(onEmojiSelected: (category, emoji){
     textcontroller.text='${textcontroller.text}${emoji.emoji}';
     print(emoji);
     print(category);
   }),
 ); 

}
}
