import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';


class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      width: MediaQuery.of(context).size.width*0.75,
      padding:const EdgeInsets.all(110),
      color: webAppBarColor,
      /* child: Row(
         children: [
           CircleAvatar(
             backgroundImage:NetworkImage(
             'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
             ),
             radius: 20,
           ),
            SizedBox(width: MediaQuery.of(context).size.width*0.01,),
            Text(info[0]['name'].toString(),style: TextStyle(fontSize: 18),
            )
         ],
       ),*/
    );
  }
}