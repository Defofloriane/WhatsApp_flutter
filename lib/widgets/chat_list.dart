import 'package:flutter/material.dart';
import 'package:whassapp1/data/info.dart';
import 'package:whassapp1/widgets/my_message.dart';
import 'package:whassapp1/widgets/sendMesaage.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            //my message = card
            return MyMessage(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          //send message = card
          return SendMessage(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}
