import 'package:flutter/material.dart';
import 'package:whassapp1/widgets/chat_list.dart';
import 'package:whassapp1/widgets/contactsweblist.dart';
import 'package:whassapp1/widgets/web_chart_appbar.dart';
import 'package:whassapp1/widgets/web_search.dart';
import 'package:whassapp1/widgets/webprofilebar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
              
               
                //searh
              children: [
                  //web bar profile 
                WebBarProfile(),
                //web search
                WebsearchBar(),
                ContacwebtList(),
              ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration:const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/backgroundImage.png'),
              fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                //chat appbar 
                 WebChatAppbar(),
                //chat list
                ChatList(),
                //message input box
              ],
            ),
          )

        ],
      )
    );
  }
}