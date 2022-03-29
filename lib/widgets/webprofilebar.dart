import 'package:flutter/material.dart';
import 'package:whassapp1/color.dart';

class WebBarProfile extends StatelessWidget {
  const WebBarProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
       width: MediaQuery.of(context).size.width*0.25,
       padding:EdgeInsets.all(10),
       decoration: BoxDecoration(
         border: Border(
           right: BorderSide(color: dividerColor),
         ),
         color: webAppBarColor,
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const CircleAvatar(
             backgroundImage:NetworkImage(
               'https://images.pexels.com/photos/1853098/pexels-photo-1853098.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
             ),
             radius: 20,
           ),
        Row(
         
          children: [
            IconButton(onPressed: (){}, icon:Icon(Icons.comment,color: Colors.grey,) 
            ),
              IconButton(onPressed: (){}, icon:Icon(Icons.more_vert,color: Colors.grey,) ),
            ]
            ),
         
       ],),
    );
  }
}