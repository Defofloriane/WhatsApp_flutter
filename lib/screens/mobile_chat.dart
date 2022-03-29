import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';
import 'package:whassapp1/data/user.dart';
import 'package:whassapp1/widgets/chat_list.dart';

class MobileChat extends StatelessWidget {
  const MobileChat({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          usersList[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call),),
          IconButton(onPressed: (){}, icon: Icon(Icons.call),),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
         Padding(
           padding: const EdgeInsets.all(20),
           child: Row(
             children: 
            [
              Container(
              width: 270,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(30),
              ),
                  child: TextField(
                    decoration: InputDecoration(
                    filled: true,
                  fillColor: searchBarColor,
                  prefixIcon:
                     Padding(padding: EdgeInsets.symmetric(horizontal: 24
                  ),
               child: Icon(Icons.emoji_emotions,color: Colors.grey,),
                  ),
                  suffixIcon:
                     Padding(padding: EdgeInsets.symmetric(horizontal: 24
                  ),
               
                  ),
                   
                     hintText: " message",
                  
                      border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(20),
                     borderSide: BorderSide(
                      width: 0,
                     style: BorderStyle.none,
               ),
              ),
                    
              contentPadding: EdgeInsets.all(20),
                       ),
                   ),
              
              ),
              SizedBox(width: 5,),
             Container(
               height: 45,
               width: 45,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color: tabColor,
               ),
               child: IconButton(
                
                 onPressed: (){}, 
               icon: Icon(Icons.send,color: Colors.white,size: 18,),),
             )
        
                ],
           ),
           
           ),
        
       /* TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: searchBarColor,
              prefixIcon:
                 Padding(padding: EdgeInsets.symmetric(horizontal: 24
              ),
             child: Icon(Icons.emoji_emotions,color: Colors.grey,),
              ),
              suffixIcon:
                 Padding(padding: EdgeInsets.symmetric(horizontal: 24
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
               Icon(Icons.camera_alt,color: Colors.grey,
               ),
                Icon(Icons.attach_file,color: Colors.grey,
               ),
                Icon(Icons.money,color: Colors.grey,
               ),
               ]
               ),
              ),
              hintText: "Type a message",
              
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(20),
                 borderSide: BorderSide(
                  width: 0,
                 style: BorderStyle.none,
             ),
            ),
            contentPadding: EdgeInsets.all(20),
          ),
        ),*/
     
      ],
        //chat list mobile
        //text input for message
      ),
    );
  }
}