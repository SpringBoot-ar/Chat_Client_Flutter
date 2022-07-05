
import 'package:chat_client_flutter/gui/pages/chat/widgets/chat_msg_item_me_widget.dart';
import 'package:chat_client_flutter/gui/pages/chat/widgets/chat_msg_item_other_widget.dart';
import 'package:flutter/material.dart';

class ChatMsgWidget extends StatefulWidget {
  const ChatMsgWidget({Key? key}) : super(key: key);

  @override
  State<ChatMsgWidget> createState() => _ChatMsgWidgetState();
}

class _ChatMsgWidgetState extends State<ChatMsgWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> msgs = [
      "msg num 1",
      "msg num 2",
      "msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3msg num 3",
      "msg num 4",
      "msg num 5",
      "msg num 6",
      "msg num 7",
      "msg num 8",
      "msg num 9",
      "msg num 10",
      "msg num 11",
      "msg num 12",
      "msg num 13",
      "msg num 14",
      "msg num 15",
      "msg num 16",
      "msg num 17",
      "msg num 18",
      "msg num 19",
    ];
    return Container(
      // color: Colors.green,
      padding: EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50.0),
          topLeft: Radius.circular(50.0),
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          if(index % 3 == 1){
            return ChatMsgItemOtherWidget(msgs[index]);
          }else{
            return ChatMsgItemMeWidget(msgs[index]);
          }
        },
        itemCount: msgs.length,
      ),
    );
  }
}
